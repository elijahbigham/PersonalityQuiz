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
                                           values: q01ans.mapValues{$0[0]}),
                                    Answer(text: "Salty",
                                           values: q01ans.mapValues{$0[1]}),
                                    Answer(text: "Sour",
                                           values: q01ans.mapValues{$0[2]}),
                                    Answer(text: "Spicy",
                                           values: q01ans.mapValues{$0[3]}),
                                    Answer(text: "Bitter",
                                           values: q01ans.mapValues{$0[4]}),
                                    Answer(text: "Savory",
                                           values: q01ans.mapValues{$0[5]})]),
                     Question(text: "Describe your hair.",
                              ans: [Answer(text: "Bald",
                                           values: q02ans.mapValues{$0[0]}),
                                    Answer(text: "Busz Cut",
                                           values: q02ans.mapValues{$0[1]}),
                                    Answer(text: "Short",
                                           values: q02ans.mapValues{$0[2]}),
                                    Answer(text: "Long",
                                           values: q02ans.mapValues{$0[3]}),
                                    Answer(text: "Messy",
                                           values: q02ans.mapValues{$0[4]}),
                                    Answer(text: "Neat",
                                           values: q02ans.mapValues{$0[5]})]),
                     Question(text: "What is your body type?",
                              ans: [Answer(text: "Skinny",
                                           values: q03ans.mapValues{$0[0]}),
                                    Answer(text: "Thicc",
                                           values: q03ans.mapValues{$0[1]}),
                                    Answer(text: "Fat",
                                           values: q03ans.mapValues{$0[2]}),
                                    Answer(text: "Muscular",
                                           values: q03ans.mapValues{$0[3]}),
                                    Answer(text: "Big Boned",
                                           values: q03ans.mapValues{$0[4]}),
                                    Answer(text: "Swol",
                                           values: q03ans.mapValues{$0[5]})]),
                     Question(text: "What is your favorite color?",
                              ans: [Answer(text: "Red",
                                           values: q04ans.mapValues{$0[0]}),
                                    Answer(text: "Yellow",
                                           values: q04ans.mapValues{$0[1]}),
                                    Answer(text: "Purple",
                                           values: q04ans.mapValues{$0[2]}),
                                    Answer(text: "Blue",
                                           values: q04ans.mapValues{$0[3]}),
                                    Answer(text: "Green",
                                           values: q04ans.mapValues{$0[4]}),
                                    Answer(text: "Orange",
                                           values: q04ans.mapValues{$0[5]})]),
                     Question(text: "What do you typically do on weekends?",
                              ans: [Answer(text: "Work Out",
                                           values: q05ans.mapValues{$0[0]}),
                                    Answer(text: "Play Video Games",
                                           values: q05ans.mapValues{$0[1]}),
                                    Answer(text: "Sleep",
                                           values: q05ans.mapValues{$0[2]}),
                                    Answer(text: "Hang Out With Friends",
                                           values: q05ans.mapValues{$0[3]}),
                                    Answer(text: "Drink",
                                           values: q05ans.mapValues{$0[4]}),
                                    Answer(text: "Watch TV",
                                           values: q05ans.mapValues{$0[5]})]),
                     Question(text: "Which of the following smells the best?",
                              ans: [Answer(text: "Fire",
                                           values: q06ans.mapValues{$0[0]}),
                                    Answer(text: "Fresh Air",
                                           values: q06ans.mapValues{$0[1]}),
                                    Answer(text: "New Car",
                                           values: q06ans.mapValues{$0[2]}),
                                    Answer(text: "Flowers",
                                           values: q06ans.mapValues{$0[3]}),
                                    Answer(text: "Buttered Popcorn",
                                           values: q06ans.mapValues{$0[4]}),
                                    Answer(text: "Cotton Candy",
                                           values: q06ans.mapValues{$0[5]})]),
                     Question(text: "Which of these hurt the most?",
                              ans: [Answer(text: "Acid",
                                           values: q07ans.mapValues{$0[0]}),
                                    Answer(text: "Second Place",
                                           values: q07ans.mapValues{$0[1]}),
                                    Answer(text: "Optionals",
                                           values: q07ans.mapValues{$0[2]}),
                                    Answer(text: "Losing Streaks",
                                           values: q07ans.mapValues{$0[3]}),
                                    Answer(text: "Migrains",
                                           values: q07ans.mapValues{$0[4]}),
                                    Answer(text: "Testicular Torsion",
                                           values: q07ans.mapValues{$0[5]})]),
                    Question(text: "How would you describe your hands?",
                                ans: [Answer(text: "Large",
                                             values: q08ans.mapValues{$0[0]}),
                                      Answer(text: "Calloused",
                                             values: q08ans.mapValues{$0[1]}),
                                      Answer(text: "Good",
                                             values: q08ans.mapValues{$0[2]}),
                                      Answer(text: "Veiny",
                                             values: q08ans.mapValues{$0[3]}),
                                      Answer(text: "Deformed",
                                             values: q08ans.mapValues{$0[4]})])
                    ]
    }
    
    //Tables of answers
    let q01ans : [outcomeType: [Int]] = [FoodOutcomes.pear:       [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.grape:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.pumpkin:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.watermelon: [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.apple:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.hamburger:  [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.lemon:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.rice:       [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.yogurt:     [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.pie:        [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.cake:       [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.seuss:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.churro:     [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.sushi:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.chocolate:  [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.oregano:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.noodles:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.waffle:     [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.america:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.pizza:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.coconut:    [0, 0, 0, 0, 0, 0]]
    
    let q02ans : [outcomeType: [Int]] = [FoodOutcomes.pear:       [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.grape:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.pumpkin:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.watermelon: [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.apple:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.hamburger:  [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.lemon:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.rice:       [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.yogurt:     [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.pie:        [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.cake:       [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.seuss:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.churro:     [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.sushi:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.chocolate:  [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.oregano:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.noodles:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.waffle:     [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.america:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.pizza:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.coconut:    [0, 0, 0, 0, 0, 0]]
    
    let q03ans : [outcomeType: [Int]] = [FoodOutcomes.pear:       [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.grape:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.pumpkin:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.watermelon: [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.apple:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.hamburger:  [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.lemon:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.rice:       [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.yogurt:     [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.pie:        [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.cake:       [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.seuss:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.churro:     [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.sushi:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.chocolate:  [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.oregano:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.noodles:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.waffle:     [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.america:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.pizza:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.coconut:    [0, 0, 0, 0, 0, 0]]
    
    let q04ans : [outcomeType: [Int]] = [FoodOutcomes.pear:       [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.grape:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.pumpkin:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.watermelon: [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.apple:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.hamburger:  [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.lemon:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.rice:       [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.yogurt:     [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.pie:        [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.cake:       [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.seuss:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.churro:     [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.sushi:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.chocolate:  [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.oregano:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.noodles:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.waffle:     [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.america:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.pizza:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.coconut:    [0, 0, 0, 0, 0, 0]]
    
    let q05ans : [outcomeType: [Int]] = [FoodOutcomes.pear:       [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.grape:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.pumpkin:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.watermelon: [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.apple:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.hamburger:  [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.lemon:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.rice:       [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.yogurt:     [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.pie:        [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.cake:       [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.seuss:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.churro:     [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.sushi:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.chocolate:  [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.oregano:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.noodles:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.waffle:     [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.america:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.pizza:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.coconut:    [0, 0, 0, 0, 0, 0]]
    
    let q06ans : [outcomeType: [Int]] = [FoodOutcomes.pear:       [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.grape:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.pumpkin:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.watermelon: [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.apple:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.hamburger:  [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.lemon:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.rice:       [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.yogurt:     [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.pie:        [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.cake:       [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.seuss:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.churro:     [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.sushi:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.chocolate:  [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.oregano:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.noodles:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.waffle:     [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.america:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.pizza:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.coconut:    [0, 0, 0, 0, 0, 0]]
    
    let q07ans : [outcomeType: [Int]] = [FoodOutcomes.pear:       [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.grape:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.pumpkin:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.watermelon: [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.apple:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.hamburger:  [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.lemon:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.rice:       [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.yogurt:     [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.pie:        [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.cake:       [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.seuss:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.churro:     [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.sushi:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.chocolate:  [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.oregano:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.noodles:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.waffle:     [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.america:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.pizza:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.coconut:    [0, 0, 0, 0, 0, 0]]
    
    let q08ans : [outcomeType: [Int]] = [FoodOutcomes.pear:       [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.grape:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.pumpkin:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.watermelon: [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.apple:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.hamburger:  [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.lemon:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.rice:       [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.yogurt:     [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.pie:        [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.cake:       [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.seuss:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.churro:     [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.sushi:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.chocolate:  [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.oregano:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.noodles:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.waffle:     [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.america:    [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.pizza:      [0, 0, 0, 0, 0, 0],
                                         FoodOutcomes.coconut:    [0, 0, 0, 0, 0, 0]]
}
