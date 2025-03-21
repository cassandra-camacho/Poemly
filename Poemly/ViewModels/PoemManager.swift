//
//  PoemManager.swift
//  Poemly
//
//  Created by Saverio Negro on 21/03/25.
//

import SwiftUI

class PoemManager {
    
    let poems: [Poem] = [
        Poem(title: "Appreciation Day", text: "How Beautiful the day is!", prompt: "Write Peom about the day.", date: .now),
        Poem(title: "Spring Blossoms", text: "Spring blossoms bring you to me", prompt: "Reflect on this first day of spring.", date: Calendar.current.date(byAdding: .day, value: 1, to: .now)!),
        Poem(title: "A Thousands Mornings with You", text: "Your morning begins with your scent", prompt: "Reflect on someone you would like to spend most of your time with.", date: Calendar.current.date(byAdding: .day, value: 2, to: .now)!)
    ]
    
    func getPoem(date: Date) -> Poem? {
        
        let filteringDate = date.getMonthDayYear()
        
        if let poem = poems.first(where: { poem in poem.date.getMonthDayYear() == filteringDate }) {
            return poem
        } else {
            return nil
        }
    }
}
