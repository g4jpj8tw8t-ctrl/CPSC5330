//
//  ResultsViewController.swift
//  CurrencyConverter
//
//  Created by J B on 6/25/26.
//

import UIKit

class ResultsViewController: UIViewController {

        // Do any additional setup after loading the view.
    
    @IBOutlet weak var usdLabel: UILabel!
    
    @IBOutlet weak var yenAmountLabel: UILabel!
    
    @IBOutlet weak var euroAmountLabel: UILabel!
    
    @IBOutlet weak var yuanAmountLabel: UILabel!
    
    @IBOutlet weak var cadAmountLabel: UILabel!
    
    @IBOutlet weak var yenRow: UIStackView!
    
    @IBOutlet weak var euroRow: UIStackView!
    
    @IBOutlet weak var yuanRow: UIStackView!
    
    @IBOutlet weak var cadRow: UIStackView!
    
    
    
    
    var amount = 0
    var selectedCurrencies: [String] = []
    var currencyLogic = CurrencyLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        yenRow.isHidden = true
        euroRow.isHidden = true
        yuanRow.isHidden = true
        cadRow.isHidden = true
        
        usdLabel.text = "USD: $\(amount)"
        
        yenAmountLabel.text = ""
        euroAmountLabel.text = ""
        yuanAmountLabel.text = ""
        cadAmountLabel.text = ""
        
        if selectedCurrencies.contains("Japanese Yen") {
            yenRow.isHidden = false
            yenAmountLabel.text = currencyLogic.convertUSD(amount, to: "Japanese Yen")
        }
        
        if selectedCurrencies.contains("Euro") {
            euroRow.isHidden = false
            euroAmountLabel.text = currencyLogic.convertUSD(amount, to: "Euro")
        }
        
        if selectedCurrencies.contains("Chinese Yuan") {
            yuanRow.isHidden = false
            yuanAmountLabel.text = currencyLogic.convertUSD(amount, to: "Chinese Yuan")
        }
        
        if selectedCurrencies.contains("Canadian Dollar") {
            cadRow.isHidden = false
            cadAmountLabel.text = currencyLogic.convertUSD(amount, to: "Canadian Dollar")
        }
        }
    
    @IBAction func startOver(_ sender: UIButton) {
        dismiss(animated: true)
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
