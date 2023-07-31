//
//  ContentView.swift
//  Desafios
//
//  Created by Student15 on 27/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("Caminhao")
                .resizable()
                .scaledToFit()
                .foregroundColor(.accentColor)
            Text("Hackatruck")
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
            HStack{
                Text("Maker")
                    .foregroundColor(Color.yellow)
                    
                Text("Space")
                    .foregroundColor(Color.red)
            }
            
                
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
