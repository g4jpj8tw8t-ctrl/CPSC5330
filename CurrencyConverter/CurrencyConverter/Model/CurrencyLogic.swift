//
//  CurrencyLogic.swift
//  CurrencyConverter
//
//  Created by J B on 6/25/26.
//

import Foundation

struct CurrencyLogic {
    
    let yenRate = 157.0
    let euroRate = 0.92
    let yuanRate = 7.18
    let cadRate = 1.37
    
    func convertUSD(_ amount: Int, to currency: String) -> String {
        let usd = Double(amount)
        var converted = 0.0
        
        switch currency {
        case "Japanese Yen":
            converted = usd * yenRate
        case "Euro":
            converted = usd * euroRate
        case "Chinese Yuan":
            converted = usd * yuanRate
        case "Canadian Dollar":
            converted = usd * cadRate
        default:
            converted = 0
        }
        
        return String(format: "%.2f", converted)
    }
    
}
