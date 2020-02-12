import UIKit

//Struct for each answer
struct Answer<T : QuizOutcomes>{
    var text: String
    var values: [T: Int]
}

//Struct for each question
struct Question<T : QuizOutcomes>{
    var text: String
    //contains the answers struct
    var ans: [Answer<T>]
}

//Protocol for quiz classes
protocol Quiz{
    associatedtype outcomeType : QuizOutcomes
    var questions : [Question<outcomeType>] {get}
    var outcomes : [outcomeType: Int] {get set}
    
    init()
}

//Protocol for outcome enums
protocol QuizOutcomes : Hashable, CaseIterable{
    func getName() -> String
}

// fucking swift's shit requires shunts
protocol Shunt{
    func update(question : Int, title : UILabel, buttons : [UIButton])
    func press(question : Int, sender : UIButton, buttons : [UIButton])
    
    func displayable() -> [(String, Int)] // gets results in a displayable format, sorted
    func numQuestions() -> Int // expects question num to not go over this
}

class ViewController: UIViewController {

    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var Ans1: UIButton!
    @IBOutlet weak var Ans2: UIButton!
    @IBOutlet weak var Ans3: UIButton!
    @IBOutlet weak var Ans4: UIButton!
    @IBOutlet weak var Ans5: UIButton!
    @IBOutlet weak var Ans6: UIButton!

    @IBOutlet var buttonArray: [UIButton]!
    
    //Keeps track of the question number
    //Starts at 0 cause Comp Sci
    var questionNumber = 0
    
    //fuck you swift you frankensteined amalgamation of garbage
    //needs to be set to a QuizShunt parameterized on the quiz class
    var shint : Shunt?
    
    //Sets up the quiz based on the assigned values of the structs above
    func initializeQuiz(whichQuiz : Int){
        switch whichQuiz {
        case 0:
            shint = QuizShunt<FoodQuiz>()
            print(whichQuiz)
        case 1:
            shint = QuizShunt<PhQuiz>()
            print(whichQuiz)
        default:
            //Say something bad happened
            print("Quiz does not exist")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //init the quiz type temporarily
        shint = QuizShunt<FoodQuiz>()
        shint = QuizShunt<PhQuiz>()
        //Initializes button array
        buttonArray = [Ans1, Ans2, Ans3, Ans4, Ans5, Ans6]
        //Calling this method to test basic functionallity of the game
        update()
    }
    
    //Call this to update screen when question number changes
    //Updates text displayed based on question
    func update(){
        print(questionNumber)
        
        //outsourced slave labor, but again
        if let shunt = shint{
            if(questionNumber < shunt.numQuestions()){
                shunt.update(question: questionNumber, title: QuestionLabel, buttons: buttonArray)
            }
            else if(questionNumber == shunt.numQuestions()){ // temp: print results
                for (key, value) in shunt.displayable(){
                    print("\(key): \(value)")
                }
            }
            else{
                print("went over question limit, please pay 500 BuzzCoins for Questions XL package")
            }
        }
        else{
            print("an update was occuringed without a quiz selected")
        }
    }
    
    //This checks what button is pressed and acts accordingly
    @IBAction func buttonPress(sender: UIButton){
        //outsourced slave labor
        if let shunt = shint{
            if(questionNumber < shunt.numQuestions()){
                shunt.press(question: questionNumber, sender: sender, buttons: buttonArray)
            }
            
            else{
                print("went over question limit, please pay 500 BuzzCoins for Questions XL package")
            }
        }
        else{
            print("a button was pressed without a quiz selected")
        }
        
        //Adds 1 to the question number and calls update again
        questionNumber += 1
        if let shunt = shint{
            if (questionNumber == shunt.numQuestions()){
               //let cell = tableView.cellForRow(at: indexPath)
                performSegue(withIdentifier: "toEnd", sender: nil)
            }
        }
        update()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let end = segue.destination as! EndScreenViewController
        if let shunt = shint{
            end.identity = shunt.displayable()[0].0
        }
        
        
    }
    
    
}
//QUIZES----------------------------------------------------------------------------------
class QuizShunt<T : Quiz> : Shunt{
    var quiz : T = T()
    
    func update(question : Int, title : UILabel, buttons : [UIButton]) {
        title.text = quiz.questions[question].text // sets questionlabel
        for i in 0..<quiz.questions[question].ans.count{ // sets answer labels
            buttons[i].setTitle(quiz.questions[question].ans[i].text, for: .normal)
        }
    }
    
    func press(question : Int, sender : UIButton, buttons : [UIButton]) {
        for i in 0..<buttons.count{
            if(sender == buttons[i]){ // finds i = index of current button
                print(i)
                for (key, val) in quiz.questions[question].ans[i].values{ // adds outcomes
                    if let score = quiz.outcomes[key]{
                        quiz.outcomes[key] = val + score
                    }
                    else{
                        quiz.outcomes[key] = val
                    }
                }
            }
        }
    }
    
    func displayable() -> [(String, Int)] { // fancy thingo, see protocol above
        return quiz.outcomes.map{($0.key.getName(), $0.value)}.sorted(by: {$0.1 > $1.1})
    }
    
    func numQuestions() -> Int{
        return quiz.questions.count
    }
}
