//
//  ViewController.swift
//  BaldwinJosephAdventureApp
//
//  Created by J B on 6/7/26.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var questLabel: UILabel!
    @IBOutlet weak var optionOne: UIButton!
    @IBOutlet weak var optionTwo: UIButton!
    
    var questlogic = QuestLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func pathChosen(_ sender: UIButton) {
        if sender == optionOne {
            questlogic.chooseOptionOne()
        } else {
            questlogic.chooseOptionTwo()
        }
        updateUI()
    }
    
    func updateUI() {
        let currentQuest = questlogic.getCurrentQuest()
        
        questLabel.text = currentQuest.quest
        background.image = UIImage(named: currentQuest.imageName)
        
        if questlogic.isEnding() {
            optionOne.isHidden = false
            optionTwo.isHidden = true
            optionOne.setTitle("Play Again!", for: .normal)
        } else {
            optionOne.isHidden = false
            optionTwo.isHidden = false
            optionOne.setTitle(currentQuest.optionOne, for: .normal)
            optionTwo.setTitle(currentQuest.optionTwo, for: .normal)
        }
    }
        
}
