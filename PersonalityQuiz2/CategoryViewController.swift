//
//  CategoryViewController.swift
//  PersonalityQuiz2
//
//  Created by Julian Greenawalt (student HH) on 2/12/20.
//  Copyright © 2020 Bigham, Elijah. All rights reserved.
//

import Foundation
import UIKit

class CategoryViewController: UIViewController {

    @IBOutlet weak var FoodQuizButton: UIButton!
    @IBOutlet weak var pHQuizButton: UIButton!
    @IBOutlet weak var consoleQuizButton: UIButton!
    
    var choice = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Calls Initialize quiz in viewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let quiz = segue.destination as! ViewController
        quiz.initializeQuiz(whichQuiz: choice)
    }
    
    @IBAction func FoodQuizButtonPress(_ sender: Any) {
        choice = 0
    }
    
    @IBAction func pHQuizButtonPress(_ sender: Any) {
        choice = 1
    }
    @IBAction func ConsoleQuizButtonPress(_ sender: Any) {
        choice = 2
    }
    
    
}

