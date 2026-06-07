//
//  ViewController.swift
//  BaldwinJosephMoodTrackerApp
//
//  Created by J B on 6/6/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var moodLabel: UILabel!
    @IBOutlet weak var moodSlider: UISlider!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var saveMoodLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moodSlider.minimumValue = 0
        moodSlider.maximumValue = 100
        moodSlider.value = 50
        updateMoodLabel()
        saveMoodLabel.text = ""
        
    }

    @IBAction func moodSelected(_ sender: UISlider) {
        updateMoodLabel()
        
    }
    
    @IBAction func moodSaved(_ sender: Any) {
        let mood = moodDescription(for: Int(moodSlider.value))
        let Formatter = DateFormatter()
        Formatter.dateStyle = .medium
        let dateText = Formatter.string(from: datePicker.date)
        saveMoodLabel.text = "On \(dateText), you felt \(mood)"
    }
    
    func updateMoodLabel() {
        let value = Int(moodSlider.value)
        moodLabel.text = "Feeling: \(moodDescription(for: value))"
    }
    
    func moodDescription(for value: Int) -> String {
        switch value {
        case 0...20:
            return "Very Sad 😢"
        case 21...40:
            return "Sad 🙁"
        case 41...60:
            return "Neutral 😐"
        case 61...80:
            return "Happy 🙂"
        case 81...100:
            return "Very Happy 😄"
        default:
            return "Neutral 😐"
        }
    }
}

