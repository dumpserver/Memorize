//
//  ContentView.swift
//  Memorize
//
//  Created by Davyd Adriel on 15/02/22. Naivepan
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top, content: {
            
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 3)
            
            Text("Hello, Naivepan")
            
                
        })
        .padding(.horizontal)
        .foregroundColor(.red)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
