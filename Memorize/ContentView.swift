//
//  ContentView.swift
//  Memorize
//
//  Created by Davyd Adriel on 15/02/22. Naivepan
//

import SwiftUI
struct ContentView: View {
    
    var emojis = ["🦽","🦼","🏊🏼‍♀️","🛴","🚲","🛵","🏍","🛺","🚔","🚍","🚘","🚖","🚡","🚨","🛞","🚀","🛸","🚁","🛩","✈️","🚂","⛴","🚤","🚇",]
    var emojiCount = 10

    var body: some View {
    
        HStack{
            ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                CardView(content: emoji)
            }
        }
        .padding(.horizontal)
        .foregroundColor(.red)
        
        
        
    }
        
}


struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            
            if isFaceUp{
                shape.fill().foregroundColor(.white)
                
                shape.stroke(lineWidth: 3)
                
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
            
        }
        .onTapGesture{
            isFaceUp = !isFaceUp
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
