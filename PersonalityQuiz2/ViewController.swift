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
    
    //outcomes. Add as many of these as things the user can be determined to be
    var o1 = 0
    var o2 = 0
    
    //Question Struct. Questions are Questions
    struct Question {
        var questionText: String
        var ansTexts: [String]
        
    }
    
    
    //Example Question. questionText is a string, ansTexts are an array of Strings
    var questionOne = Question(questionText: "What's your favorite passtime?", ansTexts: ["Running", "Jumping", "Video Games", "Swimming", "Kayacking", "Harbinging"])
    
    
    //recieves a question object, and sets the question label and answer buttons accordingly
    func initializeQuestion(question: Question){
        QuestionLabel.text = question.questionText
        var i = 0
        for button in buttonArray{
            
            /*
            for answer in question.ansTexts{
                button.setTitle(answer, for: .normal)
            }
            */
            button.setTitle(question.ansTexts[i], for: .normal)
            i += 1
        }
        
    }
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeQuestion(question: questionOne)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
