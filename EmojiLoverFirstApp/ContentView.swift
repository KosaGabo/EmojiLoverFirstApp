//
//  ContentView.swift
//  EmojiLoverFirstApp
//
//  Created by Kósa Gábor on 11/12/2024.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 😂, 🤡, 💩, 🚀
}

struct ContentView: View {
    @State var selection: Emoji = .🚀
    
    var body: some View {
        NavigationView {
            VStack {
                Text(selection.rawValue)
                    .font(.system(size: 150))
                Picker("Emoji választó", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self) { emoji in
                        Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("Emoji választó app😅")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
