//
//  ViewController.swift
//  PersonalityQuiz
//
//  Created by Elijah Bigham (student HH) on 2/3/20.
//  Copyright © 2020 Bigham, Elijah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var Ans1: UIButton!
    @IBOutlet weak var Ans2: UIButton!
    @IBOutlet weak var Ans3: UIButton!
    @IBOutlet weak var Ans4: UIButton!
    @IBOutlet weak var Ans5: UIButton!
    @IBOutlet weak var Ans6: UIButton!

    @IBOutlet var buttonArray: [UIButton]!

    //Struct for each answer
    struct answers {
        var text: String
        var values: [Int]
    }
    
    //Struct for each question
    struct questions {
        var questionText: String
        //contains the answers struct
        var ans: [answers]
    }
    
    struct outcomes {
        var name: String
        var num: Int
        //var image = UIImage
    }
    
    //Arrays of all the stuff
    var questArr : [questions] = []
    var outArr : [outcomes] = []
    
    //Keeps track of the question number
    //Starts at 0 cause Comp Sci
    var questionNumber = 0
    
    //Sets up the quiz based on the assigned values of the structs above
    func initializeQuiz(whichQuiz : Int){
        switch whichQuiz {
        case 1:
            //initialize stuff form another script
            print(whichQuiz)
        case 2:
            //initialize other stuff from that script
            print(whichQuiz)
        default:
            //Say something bad happened
            print(whichQuiz)
        }
    }
    
    //Call this to update screen when question number changes
    //Updates text displayed based on question
    func update(){
        print(questionNumber)
        
        //Initializes button array
        buttonArray = [Ans1, Ans2, Ans3, Ans4, Ans5, Ans6]
        
        //Sets QuestionLabel to the current question
        //NOTHING STOPS THIS FROM GOING OUT OF RANGE CURRENTLY
        QuestionLabel.text = questArr[questionNumber].questionText
        
        //Loops through all the buttons and sets the text to each answer text thing
        for i in 0..<questArr[0].ans.count{
            buttonArray[i].setTitle(questArr[questionNumber].ans[i].text, for: .normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Calling this method to test basic functionallity of the game
        whatFoodAreYou()
        update()
    }
    
    //This checks what button is pressed and acts accordingly
    @IBAction func buttonPress(sender: UIButton){
        
        //Gets the index of the selected answer in the ans array
        //ansIndex is applied in the switch statement below
        var ansIndex = 0
        for i in 0..<questArr[0].ans.count{
            if(sender.currentTitle == questArr[questionNumber].ans[i].text){
                ansIndex = i
            }
        }
        
        //Compares title of sender with titles of buttons to check which one was pressed
        switch sender.currentTitle {
        case questArr[questionNumber].ans[0].text:
            for i in 0..<questArr[0].ans[0].values.count{   //This long complicated line is just the length of the array of values attached to each question
                //This is where the values get added
                outArr[i].num += questArr[questionNumber].ans[ansIndex].values[i]
                print(outArr[i].num)
            }
        case questArr[questionNumber].ans[1].text:
            for i in 0..<questArr[0].ans[0].values.count{
                outArr[i].num += questArr[questionNumber].ans[ansIndex].values[i]
                print(outArr[i].num)
            }
        case questArr[questionNumber].ans[2].text:
            for i in 0..<questArr[0].ans[0].values.count{
                outArr[i].num += questArr[questionNumber].ans[ansIndex].values[i]
                print(outArr[i].num)
            }
        case questArr[questionNumber].ans[3].text:
            for i in 0..<questArr[0].ans[0].values.count{
                outArr[i].num += questArr[questionNumber].ans[ansIndex].values[i]
                print(outArr[i].num)
            }
        case questArr[questionNumber].ans[4].text:
            for i in 0..<questArr[0].ans[0].values.count{
                outArr[i].num += questArr[questionNumber].ans[ansIndex].values[i]
                print(outArr[i].num)
            }
        case questArr[questionNumber].ans[5].text:
            for i in 0..<questArr[0].ans[0].values.count{
                outArr[i].num += questArr[questionNumber].ans[ansIndex].values[i]
                print(outArr[i].num)
            }
        default:
            print(sender.currentTitle!)
            print("Something went wrong in buttonPress")
        }
        
        //Adds 1 to the question number and calls update again
        questionNumber += 1
        update()
    }
    
    //QUIZES-----------------------------------------------------------------------------------------------------------------------------
    func whatFoodAreYou(){
        print("You chose what food are you")
        
        outArr = [outcomes(name: "Pear", num: 0),
                  outcomes(name: "Grape", num: 0),
                  outcomes(name: "Pumpkin", num: 0),
                  outcomes(name: "Watermellon", num: 0),
                  outcomes(name: "Apple", num: 0),
                  outcomes(name: "Hamburger", num: 0),
                  outcomes(name: "Lemon", num: 0),
                  outcomes(name: "Rice", num: 0),
                  outcomes(name: "Yogurt", num: 0),
                  outcomes(name: "Pie", num: 0),
                  outcomes(name: "Cake", num: 0),
                  outcomes(name: "Green eggs and ham", num: 0),
                  outcomes(name: "Churro", num: 0),
                  outcomes(name: "Sushi", num: 0),
                  outcomes(name: "Chocolate", num: 0),
                  outcomes(name: "Oregano", num: 0),
                  outcomes(name: "Egg noodles", num: 0),
                  outcomes(name: "Waffle", num: 0),
                  outcomes(name: "Triple bacon cheeseburger with a side of fries", num: 0),
                  outcomes(name: "Pizza", num: 0),
                  outcomes(name: "Coconut", num: 0)]
        
        questArr = [questions(questionText: "What type of person are you?",                         //Question 1
                   ans: [answers(text: "Sweet", values: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]),
                         answers(text: "Salty", values: [0, 0, 0, 0, 0, 0, 0, 0, 1, 0]),
                         answers(text: "Sour", values: [0, 0, 0, 0, 0, 0, 0, 1, 0, 0]),
                         answers(text: "Spicy", values: [0, 0, 0, 0, 0, 0, 1, 0, 0, 0]),
                         answers(text: "Bitter", values: [0, 0, 0, 0, 0, 1, 0, 0, 0, 0]),
                         answers(text: "Savory", values: [0, 0, 0, 0, 1, 0, 0, 0, 0, 0])]),
                    
                    questions(questionText: "Describe your hair.",                                  //Question 2
                    ans: [answers(text: "Bald", values: [0, 0, 0, 0, 0, 0, 0, 0, 0, 1]),
                          answers(text: "Busz cut", values: [0, 0, 0, 0, 0, 0, 0, 0, 1, 0]),
                          answers(text: "Short", values: [0, 0, 0, 0, 0, 0, 0, 1, 0, 0]),
                          answers(text: "Long", values: [0, 0, 0, 0, 0, 0, 1, 0, 0, 0]),
                          answers(text: "Messy", values: [0, 0, 0, 0, 0, 1, 0, 0, 0, 0]),
                          answers(text: "Neat", values: [0, 0, 0, 0, 1, 0, 0, 0, 0, 0])]),
                    
                    questions(questionText: "What is your body type?",                              //Question 3
                    ans: [answers(text: "Skinny", values: [0, 0, 0, 0, 0, 0, 0, 0, 0, 1]),
                          answers(text: "Thicc", values: [100, 0, 0, 0, 0, 0, 0, 0, 1, 0]),
                          answers(text: "Fat", values: [0, 0, 0, 0, 0, 0, 0, 1, 0, 0]),
                          answers(text: "Muscular", values: [0, 0, 0, 0, 0, 0, 1, 0, 0, 0]),
                          answers(text: "Big boned", values: [0, 0, 0, 0, 0, 1, 0, 0, 0, 0]),
                          answers(text: "Swol", values: [0, 0, 0, 0, 1, 0, 0, 0, 0, 0])]),
                    
                    questions(questionText: "What is your favorite color?",                         //Question 4
                    ans: [answers(text: "Red", values: [0, 0, 0, 0, 0, 0, 0, 0, 0, 1]),
                          answers(text: "Orange", values: [0, 0, 0, 0, 0, 0, 0, 0, 1, 0]),
                          answers(text: "Yellow", values: [0, 0, 0, 0, 0, 0, 0, 1, 0, 0]),
                          answers(text: "Green", values: [0, 0, 0, 0, 0, 0, 1, 0, 0, 0]),
                          answers(text: "Blue", values: [0, 0, 0, 0, 0, 1, 0, 0, 0, 0]),
                          answers(text: "Purple", values: [0, 0, 0, 0, 1, 0, 0, 0, 0, 0])]),
                    
                    questions(questionText: "What do you typically do on weekends?",                //Question 5
                    ans: [answers(text: "Work out", values: [0, 0, 0, 0, 0, 0, 0, 0, 0, 1]),
                          answers(text: "Play video games", values: [0, 0, 0, 0, 0, 0, 0, 0, 1, 0]),
                          answers(text: "Sleep", values: [0, 0, 0, 0, 0, 0, 0, 1, 0, 0]),
                          answers(text: "Hang out with friends", values: [0, 0, 0, 0, 0, 0, 1, 0, 0, 0]),
                          answers(text: "Drink", values: [0, 0, 0, 0, 0, 1, 0, 0, 0, 0]),
                          answers(text: "Watch TV", values: [0, 0, 0, 0, 1, 0, 0, 0, 0, 0])]),
                    
                    questions(questionText: "Which of the following smells the best?",              //Question 6
                    ans: [answers(text: "Fire", values: [0, 0, 0, 0, 0, 0, 0, 0, 0, 1]),
                          answers(text: "Fresh air", values: [0, 0, 0, 0, 0, 0, 0, 0, 1, 0]),
                          answers(text: "New car", values: [0, 0, 0, 0, 0, 0, 0, 1, 0, 0]),
                          answers(text: "Flowers", values: [0, 0, 0, 0, 0, 0, 1, 0, 0, 0]),
                          answers(text: "Buttered popcorn", values: [0, 0, 0, 0, 0, 1, 0, 0, 0, 0]),
                          answers(text: "Cotton candy", values: [0, 0, 0, 0, 1, 0, 0, 0, 0, 0])]),
                    
                    questions(questionText: "Which of these hurt the most?",                        //Question 7
                    ans: [answers(text: "Acid", values: [0, 0, 0, 0, 0, 0, 0, 0, 0, 1]),
                          answers(text: "Second place", values: [0, 0, 0, 0, 0, 0, 0, 0, 1, 0]),
                          answers(text: "Optionals", values: [0, 0, 0, 0, 0, 0, 0, 1, 0, 0]),
                          answers(text: "Loosing streaks", values: [0, 0, 0, 0, 0, 0, 1, 0, 0, 0]),
                          answers(text: "Migrains", values: [0, 0, 0, 0, 0, 1, 0, 0, 0, 0]),
                          answers(text: "Testicular Torsion", values: [0, 0, 0, 0, 1, 0, 0, 0, 0, 0])]),
            
                    ]
    }
}
