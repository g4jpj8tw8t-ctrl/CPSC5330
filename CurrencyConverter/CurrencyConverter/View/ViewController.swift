//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by J B on 6/25/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usdTextField: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var yenSwitch: UISwitch!
    
    @IBOutlet weak var euroSwitch: UISwitch!
    
    @IBOutlet weak var yuanSwitch: UISwitch!
    
    @IBOutlet weak var cadSwitch: UISwitch!
    
    var amount = 0
    var selectedCurrencies: [String] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func convertButton(_ sender: UIButton) {
        errorLabel.text = ""
        
        guard let text = usdTextField.text, let enteredAmount = Int(text), enteredAmount > 0
        else {
            errorLabel.text = "Please enter a valid whole dollar amount."
            return
        }
        
        amount = enteredAmount
        selectedCurrencies.removeAll()
        
        if yenSwitch.isOn {
            selectedCurrencies.append("Japanese Yen")
        }
        
        if euroSwitch.isOn {
            selectedCurrencies.append("Euro")
        }
        
        if yuanSwitch.isOn {
            selectedCurrencies.append("Chinese Yuan")
        }
        
        if cadSwitch.isOn {
            selectedCurrencies.append("Canadian Dollar")
        }
        
        if selectedCurrencies.isEmpty {
            errorLabel.text = "Please select at least one currency."
            return
        }
        
        performSegue(withIdentifier: "toResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResults" {
            let destination = segue.destination as! ResultsViewController
            destination.amount = amount
            destination.selectedCurrencies = selectedCurrencies
        }
    }
}
