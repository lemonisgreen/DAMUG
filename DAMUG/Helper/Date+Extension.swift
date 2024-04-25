//
//  Date+Extension.swift
//  DAMUG
//
//  Created by JIN LEE on 4/18/24.
//

import Foundation


extension Date {
    func format(_ format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.locale = Locale(identifier: "ko-KR")
        
        return formatter.string(from: self)
    }
}


