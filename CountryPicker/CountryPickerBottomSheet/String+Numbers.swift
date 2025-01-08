//
//  String+Numbers.swift
//  KYA
//
//  Created by THAHA SHAJU MON on 10/07/24.
//

import Foundation

extension String {
    
    func toEnglishNumber() -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.locale = Locale(identifier: "EN")
        guard let result = numberFormatter.number(from: self) else {
            
            return self
        }
        return result.stringValue
    }
}

