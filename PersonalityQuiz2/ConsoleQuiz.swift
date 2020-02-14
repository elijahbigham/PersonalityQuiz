import Foundation

class ConsoleQuiz : Quiz{
    enum ConsoleOutcomes : QuizOutcomes{ // enum of every possible outcome; change for new quiz
        case playStation
        case nintendoSwitch
        case gameBoy
        case wii
        case mobile
        case nintendo3DS
        case xbox
        case vive
        case oculus
        case pc
        case atari
        case gameCube
        case n64
        
        func getName() -> String{
            switch self{
            case .playStation: return "PlayStation"
            case .nintendoSwitch: return "Nintendo Switch"
            case .gameBoy: return "GameBoy"
            case .wii: return "Wii"
            case .mobile: return "Mobile"
            case .nintendo3DS: return "Nintendo 3DS"
            case .xbox: return "Xbox"
            case .vive: return "HTC Vive"
            case .oculus: return "Oculus Rift"
            case .pc: return "PC"
            case .atari: return "Atari"
            case .gameCube: return "GameCube"
            case .n64: return "Nintendo N64"
            }
        }
    }
    //FoodQuiz uses the FoodOutcomes enum; change for new quiz
    typealias outcomeType = ConsoleOutcomes
    
    //Arrays of all the stuff; DO NOT change for new quiz
    var questions : [Question<outcomeType>] = []
    var outcomes : [outcomeType: Int] = [:]
    
    //change what's in here as needed for new quiz
    required init(){
        print("What video game console are you?")
        
        outcomes = Dictionary(uniqueKeysWithValues: ConsoleOutcomes.allCases.map{($0, 0)})
        
        questions = [Question(text: "How old are you?",
                              ans: [Answer(text: "<20",
                                           values: q01ans.mapValues{$0[0]}),
                                    Answer(text: "20 - 30",
                                           values: q01ans.mapValues{$0[1]}),
                                    Answer(text: "30 - 40",
                                           values: q01ans.mapValues{$0[2]}),
                                    Answer(text: "40 - 50",
                                           values: q01ans.mapValues{$0[3]}),
                                    Answer(text: "50 - 60",
                                           values: q01ans.mapValues{$0[4]}),
                                    Answer(text: "60+",
                                           values: q01ans.mapValues{$0[5]})]),
                     Question(text: "What is your favorite type of game?",
                              ans: [Answer(text: "RPG",
                                           values: q02ans.mapValues{$0[0]}),
                                    Answer(text: "MMORPG",
                                           values: q02ans.mapValues{$0[1]}),
                                    Answer(text: "MOBA",
                                           values: q02ans.mapValues{$0[2]}),
                                    Answer(text: "FPS",
                                           values: q02ans.mapValues{$0[3]}),
                                    Answer(text: "RTS",
                                           values: q02ans.mapValues{$0[4]}),
                                    Answer(text: "I don't know any of these...",
                                           values: q02ans.mapValues{$0[5]})]),
                     Question(text: "Which of these companies do you like the most?",
                              ans: [Answer(text: "Nintendo",
                                           values: q03ans.mapValues{$0[0]}),
                                    Answer(text: "Electronic Arts",
                                           values: q03ans.mapValues{$0[1]}),
                                    Answer(text: "Blizzard",
                                           values: q03ans.mapValues{$0[2]}),
                                    Answer(text: "Valve",
                                           values: q03ans.mapValues{$0[3]}),
                                    Answer(text: "Activision",
                                           values: q03ans.mapValues{$0[4]}),
                                    Answer(text: "Ubisoft",
                                           values: q03ans.mapValues{$0[5]})]),
                     Question(text: "What would your superpower be?",
                              ans: [Answer(text: "Flight",
                                           values: q04ans.mapValues{$0[0]}),
                                    Answer(text: "Invisibility",
                                           values: q04ans.mapValues{$0[1]}),
                                    Answer(text: "Strength",
                                           values: q04ans.mapValues{$0[2]}),
                                    Answer(text: "Speed",
                                           values: q04ans.mapValues{$0[3]}),
                                    Answer(text: "Water Breathing",
                                           values: q04ans.mapValues{$0[4]}),
                                    Answer(text: "Tax Evasion",
                                           values: q04ans.mapValues{$0[5]})]),
                     Question(text: "Which of these games/franchises is your favorite?",
                              ans: [Answer(text: "Call of Duty",
                                           values: q05ans.mapValues{$0[0]}),
                                    Answer(text: "Beat Saber",
                                           values: q05ans.mapValues{$0[1]}),
                                    Answer(text: "Rocket League",
                                           values: q05ans.mapValues{$0[2]}),
                                    Answer(text: "Legend of Zelda",
                                           values: q05ans.mapValues{$0[3]}),
                                    Answer(text: "Madden",
                                           values: q05ans.mapValues{$0[4]}),
                                    Answer(text: "I haven't heard of any of these",
                                           values: q05ans.mapValues{$0[5]})]),
                     Question(text: "Which shape is your favorite?",
                              ans: [Answer(text: "Cube",
                                           values: q06ans.mapValues{$0[0]}),
                                    Answer(text: "Sphere",
                                           values: q06ans.mapValues{$0[1]}),
                                    Answer(text: "Triangle",
                                           values: q06ans.mapValues{$0[2]}),
                                    Answer(text: "Rectangular Prism",
                                           values: q06ans.mapValues{$0[3]}),
                                    Answer(text: "Oval",
                                           values: q06ans.mapValues{$0[4]}),
                                    Answer(text: "n-gon",
                                           values: q06ans.mapValues{$0[5]})]),
                     Question(text: "What is your favorite color?",
                              ans: [Answer(text: "Red",
                                           values: q07ans.mapValues{$0[0]}),
                                    Answer(text: "Yellow",
                                           values: q07ans.mapValues{$0[2]}),
                                    Answer(text: "Purple",
                                           values: q07ans.mapValues{$0[5]}),
                                    Answer(text: "Blue",
                                           values: q07ans.mapValues{$0[4]}),
                                    Answer(text: "Green",
                                           values: q07ans.mapValues{$0[3]}),
                                    Answer(text: "Orange",
                                           values: q07ans.mapValues{$0[1]})]),
                    Question(text: "How do you hold your steering wheel?",
                                ans: [Answer(text: "One hand on top",
                                             values: q08ans.mapValues{$0[0]}),
                                      Answer(text: "Two hands on each side",
                                             values: q08ans.mapValues{$0[1]}),
                                      Answer(text: "One hand on bottom",
                                             values: q08ans.mapValues{$0[2]}),
                                      Answer(text: "One hand or two hands",
                                             values: q08ans.mapValues{$0[3]}),
                                      Answer(text: "The position varies",
                                             values: q08ans.mapValues{$0[4]}),
                                      Answer(text: "I can't drive",
                                             values: q08ans.mapValues{$0[5]})])
                    ]
    }
    
    //Tables of answers
    let q01ans : [outcomeType: [Int]] = [ConsoleOutcomes.playStation:      [3,    3,    3,    2,    0,    0],
                                         ConsoleOutcomes.nintendoSwitch:   [4,    4,    2,    0,    -2,    -3],
                                         ConsoleOutcomes.gameBoy:          [0,    1,    1,    2,    3,    2],
                                         ConsoleOutcomes.wii:              [0,    1,    2,    3,    3,    1],
                                         ConsoleOutcomes.mobile:           [2,    3,    2,    2,    1,    0],
                                         ConsoleOutcomes.nintendo3DS:      [1,    2,    3,    1,    0,    -1],
                                         ConsoleOutcomes.xbox:             [3,    3,    3,    2,    0,    0],
                                         ConsoleOutcomes.vive:             [3,    4,    0,    -1,    -2,    -3],
                                         ConsoleOutcomes.oculus:           [4,    3,    0,    -1,    -2,    -3],
                                         ConsoleOutcomes.pc:               [2,    3,    3,    3,    1,    0],
                                         ConsoleOutcomes.atari:            [-3,    -1,    0,    1,    3,    5],
                                         ConsoleOutcomes.gameCube:         [-1,    0,    1,    2,    4,    3],
                                         ConsoleOutcomes.n64:              [-2,    -1,    0,    2,    3,    4]]
    
    let q02ans : [outcomeType: [Int]] = [ConsoleOutcomes.playStation:      [1,    2,    2,    4,    3,    -2],
                                         ConsoleOutcomes.nintendoSwitch:   [4,    0,    0,    2,    2,    -2],
                                         ConsoleOutcomes.gameBoy:          [4,    -1,    -2,    2,    4,    -1],
                                         ConsoleOutcomes.wii:              [4,    -2,    -1,    2,    1,    -1],
                                         ConsoleOutcomes.mobile:           [1,    3,    2,    2,    1,    0],
                                         ConsoleOutcomes.nintendo3DS:      [2,    -1,    -1,    1,    3,    -2],
                                         ConsoleOutcomes.xbox:             [1,    2,    1,    5,    2,    -2],
                                         ConsoleOutcomes.vive:             [1,    1,    1,    4,    0,    -3],
                                         ConsoleOutcomes.oculus:           [1,    2,    1,    3,    1,    -3],
                                         ConsoleOutcomes.pc:               [3,    5,    3,    2,    2,    1],
                                         ConsoleOutcomes.atari:            [2,    -3,    -2,    1,    2,    5],
                                         ConsoleOutcomes.gameCube:         [4,    -2,    -2,    3,    -1,    2],
                                         ConsoleOutcomes.n64:              [5,    -2,    -2,    2,    -1,    3]]
    
    let q03ans : [outcomeType: [Int]] = [ConsoleOutcomes.playStation:      [-1,    4,    3,    1,    3,    4],
                                         ConsoleOutcomes.nintendoSwitch:   [4,    2,    1,    -1,    2,    2],
                                         ConsoleOutcomes.gameBoy:          [2,    1,    -1,    -1,    0,    1],
                                         ConsoleOutcomes.wii:              [3,    3,    -1,    0,    2,    0],
                                         ConsoleOutcomes.mobile:           [-1,    2,    0,    1,    3,    1],
                                         ConsoleOutcomes.nintendo3DS:      [2,    0,    -1,    -1,    -1,    2],
                                         ConsoleOutcomes.xbox:             [-1,    3,    4,    1,    4,    4],
                                         ConsoleOutcomes.vive:             [-1,    0,    -2,    3,    -1,    -1],
                                         ConsoleOutcomes.oculus:           [-1,    0,    -2,    1,    -1,    -1],
                                         ConsoleOutcomes.pc:               [-1,    1,    2,    5,    2,    3],
                                         ConsoleOutcomes.atari:            [-1,    -1,    -1,    -1,    3,    -1],
                                         ConsoleOutcomes.gameCube:         [3,    1,    -1,    -1,    1,    -1],
                                         ConsoleOutcomes.n64:              [4,    1,    -1,    -1,    1,    1]]
    
    let q04ans : [outcomeType: [Int]] = [ConsoleOutcomes.playStation:      [2,    -2,    3,    2,    1,    -1],
                                         ConsoleOutcomes.nintendoSwitch:   [0,    -2,    2,    4,    4,    -1],
                                         ConsoleOutcomes.gameBoy:          [-1,    2,    -2,    -1,    -2,    -1],
                                         ConsoleOutcomes.wii:              [3,    2,    -1,    1,    -1,    -1],
                                         ConsoleOutcomes.mobile:           [2,    3,    -1,    1,    5,    -1],
                                         ConsoleOutcomes.nintendo3DS:      [0,    4,    2,    0,    0,    -1],
                                         ConsoleOutcomes.xbox:             [1,    -2,    1,    3,    1,    -1],
                                         ConsoleOutcomes.vive:             [4,    3,    2,    1,    -1,    -1],
                                         ConsoleOutcomes.oculus:           [3,    1,    4,    3,    1,    -1],
                                         ConsoleOutcomes.pc:               [3,    0,    5,    5,    3,    0],
                                         ConsoleOutcomes.atari:            [2,    4,    -3,    -4,    -4,    4],
                                         ConsoleOutcomes.gameCube:         [0,    -1,    -2,    -2,    -4,    2],
                                         ConsoleOutcomes.n64:              [-1,    0,    -2,    -3,    -4,    3]]
    
    let q05ans : [outcomeType: [Int]] = [ConsoleOutcomes.playStation:      [3,    3,    4,    -2,    3,    -2],
                                         ConsoleOutcomes.nintendoSwitch:   [0,    -1,    2,    3,    2,    -1],
                                         ConsoleOutcomes.gameBoy:          [-1,    -1,    -1,    2,    1,    -1],
                                         ConsoleOutcomes.wii:              [0,    -1,    0,    4,    2,    -1],
                                         ConsoleOutcomes.mobile:           [2,    -1,    0,    0,    4,    0],
                                         ConsoleOutcomes.nintendo3DS:      [-1,    -1,    -1,    3,    1,    -1],
                                         ConsoleOutcomes.xbox:             [5,    0,    2,    -2,    5,    -2],
                                         ConsoleOutcomes.vive:             [1,    5,    -1,    0,    0,    -1],
                                         ConsoleOutcomes.oculus:           [0,    5,    -1,    0,    0,    -1],
                                         ConsoleOutcomes.pc:               [2,    -1,    3,    -3,    0,    -1],
                                         ConsoleOutcomes.atari:            [-3,    -3,    -2,    0,    1,    3],
                                         ConsoleOutcomes.gameCube:         [-1,    -3,    -2,    2,    1,    0],
                                         ConsoleOutcomes.n64:              [-2,    -3,    -2,    3,    -1,    1]]
    
    let q06ans : [outcomeType: [Int]] = [ConsoleOutcomes.playStation:      [2,    1,    0,    4,    1,    1],
                                         ConsoleOutcomes.nintendoSwitch:   [1,    0,    -1,    3,    2,    3],
                                         ConsoleOutcomes.gameBoy:          [3,    -2,    -1,    3,    -2,    1],
                                         ConsoleOutcomes.wii:              [2,    0,    0,    4,    2,    -1],
                                         ConsoleOutcomes.mobile:           [2,    -1,    -1,    3,    1,    1],
                                         ConsoleOutcomes.nintendo3DS:      [1,    -1,    0,    2,    0,    2],
                                         ConsoleOutcomes.xbox:             [2,    0,    1,    4,    1,    -1],
                                         ConsoleOutcomes.vive:             [0,    2,    -1,    0,    4,    3],
                                         ConsoleOutcomes.oculus:           [1,    2,    1,    0,    5,    1],
                                         ConsoleOutcomes.pc:               [4,    0,    1,    3,    0,    2],
                                         ConsoleOutcomes.atari:            [2,    3,    3,    1,    -2,    -2],
                                         ConsoleOutcomes.gameCube:         [5,    -2,    0,    0,    -2,    0],
                                         ConsoleOutcomes.n64:              [1,    1,    2,    2,    0,    2]]
    
    let q07ans : [outcomeType: [Int]] = [ConsoleOutcomes.playStation:      [-1,    1,    0,    1,    4,    1],
                                         ConsoleOutcomes.nintendoSwitch:   [3,    -1,    1,    -1,    2,    -1],
                                         ConsoleOutcomes.gameBoy:          [1,    -1,    1,    2,    1,    2],
                                         ConsoleOutcomes.wii:              [1,    0,    2,    0,    1,    -1],
                                         ConsoleOutcomes.mobile:           [1,    0,    0,    1,    1,    -1],
                                         ConsoleOutcomes.nintendo3DS:      [3,    0,    -1,    1,    2,    0],
                                         ConsoleOutcomes.xbox:             [-1,    -1,    2,    4,    1,    -1],
                                         ConsoleOutcomes.vive:             [2,    1,    0,    -1,    -2,    1],
                                         ConsoleOutcomes.oculus:           [-2,    -1,    0,    1,    2,    0],
                                         ConsoleOutcomes.pc:               [2,    -1,    -1,    2,    2,    -1],
                                         ConsoleOutcomes.atari:            [1,    3,    1,    0,    0,    -1],
                                         ConsoleOutcomes.gameCube:         [1,    0,    1,    1,    3,    5],
                                         ConsoleOutcomes.n64:              [1,    -1,    1,    1,    1,    0]]
    
    let q08ans : [outcomeType: [Int]] = [ConsoleOutcomes.playStation:      [-2,    4,    -2,    -2,    0,    2],
                                         ConsoleOutcomes.nintendoSwitch:   [0,    3,    0,    4,    5,    3],
                                         ConsoleOutcomes.gameBoy:          [-1,    4,    -1,    -1,    -1,    -1],
                                         ConsoleOutcomes.wii:              [1,    2,    5,    4,    3,    0],
                                         ConsoleOutcomes.mobile:           [1,    2,    3,    3,    2,    2],
                                         ConsoleOutcomes.nintendo3DS:      [-1,    4,    -1,    -1,    -1,    -2],
                                         ConsoleOutcomes.xbox:             [-2,    4,    -2,    -2,    1,    1],
                                         ConsoleOutcomes.vive:             [1,    0,    3,    0,    -2,    -3],
                                         ConsoleOutcomes.oculus:           [1,    0,    2,    0,    -3,    -3],
                                         ConsoleOutcomes.pc:               [0,    1,    -1,    1,    4,    -1],
                                         ConsoleOutcomes.atari:            [4,    -1,    1,    0,    -1,    3],
                                         ConsoleOutcomes.gameCube:         [-1,    4,    -1,    -1,    -1,    2],
                                         ConsoleOutcomes.n64:              [4,    -1,    1,    1,    -1,    2]]
}
