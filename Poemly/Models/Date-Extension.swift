//
//  Date-Extension.swift
//  Poemly
//
//  Created by Saverio Negro on 21/03/25.
//

import Foundation

extension Date {
    
    func getFormattedDate(format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
    
    func getMonthDayYear() -> Date {
        let components = Calendar.current.dateComponents([.month, .day, .year], from: self)
        return Calendar.current.date(from: components)!
    }
}
