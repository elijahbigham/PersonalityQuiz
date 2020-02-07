import Foundation

class FoodQuiz : Quiz{
    enum FoodOutcomes : QuizOutcomes{ // enum of every possible outcome; change for new quiz
        case pear
        case grape
        case pumpkin
        case watermelon
        case apple
        case hamburger
        case lemon
        case rice
        case yogurt
        case pie
        case cake
        case seuss
        case churro
        case sushi
        case chocolate
        case oregano
        case noodles
        case waffle
        case america
        case pizza
        case coconut
        
        func getName() -> String{
            switch self{
            case .pear: return "Pear"
            case .grape: return "Grape"
            case .pumpkin: return "Pumpkin"
            case .watermelon: return "Watermelon"
            case .apple: return "Apple"
            case .hamburger: return "Hamburger"
            case .lemon: return "Lemon"
            case .rice: return "Rice"
            case .yogurt: return "Yogurt"
            case .pie: return "Pie"
            case .cake: return "Cake"
            case .seuss: return "Green Eggs and Ham"
            case .churro: return "Churro"
            case .sushi: return "Sushi"
            case .chocolate: return "Chocolate"
            case .oregano: return "Oregano"
            case .noodles: return "Noodles"
            case .waffle: return "Waffle"
            case .america: return "Triple Bacon Cheeseburger with a side of Fries"
            case .pizza: return "Pizza"
            case .coconut: return "Coconut"
            }
        }
    }
    //FoodQuiz uses the FoodOutcomes enum; change for new quiz
    typealias outcomeType = FoodOutcomes
    
    //Arrays of all the stuff; DO NOT change for new quiz
    var questions : [Question<outcomeType>] = []
    var outcomes : [outcomeType: Int] = [:]
    
    //change what's in here as needed for new quiz
    required init(){
        print("You choose what food are you")
        
        outcomes = Dictionary(uniqueKeysWithValues: FoodOutcomes.allCases.map{($0, 0)})
        
        questions = [Question(text: "What type of person are you?",
                              ans: [Answer(text: "Sweet",
                                           values: [FoodOutcomes.pear: 2]),
                                    Answer(text: "Salty",
                                           values: [:]),
                                    Answer(text: "Sour",
                                           values: [:]),
                                    Answer(text: "Spicy",
                                           values: [:]),
                                    Answer(text: "Bitter",
                                           values: [:]),
                                    Answer(text: "Savory",
                                           values: [:])]),
                     Question(text: "Describe your hair.",
                              ans: [Answer(text: "Bald",
                                           values: [:]),
                                    Answer(text: "Busz Cut",
                                           values: [:]),
                                    Answer(text: "Short",
                                           values: [:]),
                                    Answer(text: "Long",
                                           values: [:]),
                                    Answer(text: "Messy",
                                           values: [:]),
                                    Answer(text: "Neat",
                                           values: [:])]),
                     Question(text: "What is your body type?",
                              ans: [Answer(text: "Skinny",
                                           values: [:]),
                                    Answer(text: "Thicc",
                                           values: [:]),
                                    Answer(text: "Fat",
                                           values: [:]),
                                    Answer(text: "Muscular",
                                           values: [:]),
                                    Answer(text: "Big Boned",
                                           values: [:]),
                                    Answer(text: "Swol",
                                           values: [:])]),
                     Question(text: "What is your favorite color?",
                              ans: [Answer(text: "Red",
                                           values: [:]),
                                    Answer(text: "Yellow",
                                           values: [:]),
                                    Answer(text: "Purple",
                                           values: [:]),
                                    Answer(text: "Blue",
                                           values: [:]),
                                    Answer(text: "Green",
                                           values: [:]),
                                    Answer(text: "Orange",
                                           values: [:])]),
                     Question(text: "What do you typically do on weekends?",
                              ans: [Answer(text: "Work Out",
                                           values: [:]),
                                    Answer(text: "Play Video Games",
                                           values: [:]),
                                    Answer(text: "Sleep",
                                           values: [:]),
                                    Answer(text: "Hang Out With Friends",
                                           values: [:]),
                                    Answer(text: "Drink",
                                           values: [:]),
                                    Answer(text: "Watch TV",
                                           values: [:])]),
                     Question(text: "Which of the following smells the best?",
                              ans: [Answer(text: "Fire",
                                           values: [:]),
                                    Answer(text: "Fresh Air",
                                           values: [:]),
                                    Answer(text: "New Car",
                                           values: [:]),
                                    Answer(text: "Flowers",
                                           values: [:]),
                                    Answer(text: "Buttered Popcorn",
                                           values: [:]),
                                    Answer(text: "Cotton Candy",
                                           values: [:])]),
                     Question(text: "Which of these hurt the most?",
                              ans: [Answer(text: "Acid",
                                           values: [:]),
                                    Answer(text: "Second Place",
                                           values: [:]),
                                    Answer(text: "Optionals",
                                           values: [:]),
                                    Answer(text: "Losing Streaks",
                                           values: [:]),
                                    Answer(text: "Migrains",
                                           values: [:]),
                                    Answer(text: "Testicular Torsion",
                                           values: [:])]),
                    Question(text: "How would you describe your hands?",
                                ans: [Answer(text: "Large",
                                             values: [:]),
                                      Answer(text: "Small",
                                             values: [:]),
                                      Answer(text: "Calloused",
                                             values: [:]),
                                      Answer(text: "Good",
                                             values: [:]),
                                      Answer(text: "Veiny",
                                             values: [:]),
                                      Answer(text: "Deformed",
                                             values: [:])])
                    ]
    }
}
