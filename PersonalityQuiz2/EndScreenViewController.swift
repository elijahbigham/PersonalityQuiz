//
//  EndScreenViewController.swift
//  PersonalityQuiz2
//
//  Created by Elijah Bigham (student HH) on 2/7/20.
//  Copyright © 2020 Bigham, Elijah. All rights reserved.
//

import UIKit

class EndScreenViewController: UIViewController {
    
    @IBOutlet weak var DescriptionLabel: UILabel!
    @IBOutlet weak var identityLabel: UILabel!
    
    @IBOutlet var outcomeImage: UIImageView!
    
    var identity = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        identityLabel.text = "\(identity)"
        chooseDescription()
    }
    
    func chooseDescription(){
        switch identity {
            
        //FOOD QUIZ STUFF-------------------------------------------------------------------------------
            
        case "Pear":
            DescriptionLabel.text = "You are one to spend time inside a lot, yet you are always down for interactions with your friends from time to time"
            self.outcomeImage.image = UIImage(named: "Pear")
        case "Grape":
            DescriptionLabel.text = "Very volatile, occasional bursts of emotion. you are either really nice or really terrible"
            self.outcomeImage.image = UIImage(named: "Grape")
        case "Pumpkin":
            DescriptionLabel.text = "Somewhat guarded, but despite your thoughts, provide very useful feedback"
            self.outcomeImage.image = UIImage(named: "Pumpkin")
        case "Watermelon":
            DescriptionLabel.text = "You look very intimidating, but turn out to be a real softie on the inside"
            self.outcomeImage.image = UIImage(named: "Watermelon")
        case "Apple":
            DescriptionLabel.text = "You are basic, but you have variety. Somewhat fickle, yet people still like you"
            self.outcomeImage.image = UIImage(named: "Apple")
        case "Hamburger":
            DescriptionLabel.text = "You are firm in desicion making and never second guess yourself, even when you might be wrong."
            self.outcomeImage.image = UIImage(named: "Hamburger")
        case "Lemon":
            DescriptionLabel.text = "Very direct in speech and doesn't consider feelings until they matter."
            self.outcomeImage.image = UIImage(named: "Lemon")
        case "Rice":
            DescriptionLabel.text = "Your friends would describe you as the base for most projects and ideas. Strong leader who includes everyone"
            self.outcomeImage.image = UIImage(named: "Rice")
        case "Yogurt":
            DescriptionLabel.text = "You save the day at the very last second, and people can't help but love you."
            self.outcomeImage.image = UIImage(named: "Yogurt")
        case "Pie":
            DescriptionLabel.text = "You are a nice person, but still find courage to let people know how you feel. May seem harsh, but never means it"
            self.outcomeImage.image = UIImage(named: "Pie")
        case "Cake":
            DescriptionLabel.text = "You are upbeat and happy 24/7. You prioritize having fun more than anything else."
            self.outcomeImage.image = UIImage(named: "Cake")
        case "Green Eggs and Ham":
            DescriptionLabel.text = "You appreciate the silly in life, and take notes of everything you learn"
            self.outcomeImage.image = UIImage(named: "GreenEggsAndHam")
        case "Churro":
            DescriptionLabel.text = "Nobody knew you existed and were sad they never met you before. A hidden delight of a person."
            self.outcomeImage.image = UIImage(named: "Churro")
        case "Sushi":
            DescriptionLabel.text = "You enjoy color and decoration on a small scale. Minor OCD, but bearable nonetheless"
            self.outcomeImage.image = UIImage(named: "Sushi")
        case "Chocolate":
            DescriptionLabel.text = "You like doing anything with anyone, anytime. You love trying new things as long as they share a certan aspect"
            self.outcomeImage.image = UIImage(named: "Chocolate")
        case "Oregano":
            DescriptionLabel.text = "You enjoy making other people's lives better instead of your own, but not to an extreme extent. Mostly seems happy."
            self.outcomeImage.image = UIImage(named: "Oregano")
        case "Egg Noodles":
            DescriptionLabel.text = "You try your best at everything, but sometimes things don't go so well."
            self.outcomeImage.image = UIImage(named: "Noodles")
        case "Waffle":
            DescriptionLabel.text = "You find pride in doing things right, even when things are laid out for you."
            self.outcomeImage.image = UIImage(named: "Waffle")
        case "Triple Bacon Cheeseburger with a side of Fries":
            DescriptionLabel.text = "Mostly grumpy in character, but still don't want people to be hurt."
            self.outcomeImage.image = UIImage(named: "America")
        case "Pizza":
            DescriptionLabel.text = "You appreciate consistancy and minimalist change. Starts projects, and has many ideas on how to finish"
            self.outcomeImage.image = UIImage(named: "Pizza")
        case "Coconut":
        DescriptionLabel.text = "You are very conserved. Expressing feelings has never been your thing, and you prefer to hide from the world."
            self.outcomeImage.image = UIImage(named: "Coconut")
            
        //PHQUIZ STUFF-------------------------------------------------------------------------------
            
        default:
            DescriptionLabel.text = "A man has fallen into the river in Lego City. Start the new rescue helicopter. Hey! Build the helicopter And off to the rescue. Prepare the lifeline. Lower the stretcher And make the rescue. The new emergency collection from Lego City"
            self.outcomeImage.image = UIImage(named: "FallenIntoRiver")
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
