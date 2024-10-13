//
//  Extension.swift
//  world-coins
//
//  Created by UserTQI on 13/10/24.
//

import SwiftUI
import Foundation

extension Double {
    
    var color: Color {
        if self.sign == .minus {
            return Color.red
        } else {
            return Color.green
        }
    }
    
    func formatter(decimalPlaces: Int, with changeSymbol: Bool = false) -> String {
        let numberFormater = NumberFormatter()
        numberFormater.numberStyle = .decimal
        numberFormater.roundingMode = .halfUp
        numberFormater.minimumFractionDigits = (decimalPlaces > 2) ? decimalPlaces : 2
        numberFormater.maximumFractionDigits = (decimalPlaces > 2) ? decimalPlaces : 2
        numberFormater.locale = Locale(identifier: "pr_BR")
        
        guard let value = numberFormater.string(from: NSNumber(value: self)) else { return String(self) }
        if changeSymbol {
            if self.sign == .minus {
                return "\(value)"
            } else {
                return "+\(value)"
            }
        }
        
        return value.replacingOccurrences(of: "-", with: "")
    }
    
    func toPercentege(with changeSymbol: Bool = false) -> String {
        let value = formatter(decimalPlaces: 2)
        
        if changeSymbol {
            if self.sign == .minus {
                return "\u{2193} \(value)%"
            } else {
                return "\u{2191} \(value)%"
            }
        }
        
        return "\(value)%"
    }
}
