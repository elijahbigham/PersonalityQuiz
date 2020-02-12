//
//  EndScreenViewController.swift
//  PersonalityQuiz2
//
//  Created by Elijah Bigham (student HH) on 2/7/20.
//  Copyright © 2020 Bigham, Elijah. All rights reserved.
//

import UIKit

class EndScreenViewController: UIViewController {
    
    var justification = ""
    
    @IBOutlet weak var DescriptionLabel: UILabel!
    @IBOutlet weak var identityLabel: UILabel!
    var identity = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        identityLabel.text = "You are a \(identity)"
        chooseDescription()
    }
    
    func chooseDescription(){
        switch identity {
        case "Pear":
            justification = "Thicc"
        default:
            justification = "Yeet"
        }
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
