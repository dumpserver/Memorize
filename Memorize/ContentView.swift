//
//  ContentView.swift
//  Memorize
//
//  Created by Davyd Adriel on 15/02/22. Naivepan
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return ZStack(content: {// Empilha views umas sobre as outras em profundidade (z)
            RoundedRectangle(cornerRadius: 25.0) // Argument Label
                .stroke(lineWidth: 3)
                .padding(.horizontal)
                .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
            
            Text("Hello, Naivepan")
                .foregroundColor(.orange)
                .padding()
                
        })
        
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
