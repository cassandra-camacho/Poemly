//
//  ContentView.swift
//  Poemly
//
//  Created by Cassandra Camacho on 3/20/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var poemManager = PoemManager()
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors: [.pink, .purple],
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
                VStack {
                    VStack {
                        
                        if let poem = poemManager.getPoem(date: .now) {
                            Text("\(poem.title)")
                                .font(.largeTitle)
                                .fontWeight(.semibold)
                                .foregroundStyle(.primary)
                            Text("\(poem.date.getFormattedDate(format: "MMMM dd EEEE"))")
                                .foregroundStyle(.primary)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

//
