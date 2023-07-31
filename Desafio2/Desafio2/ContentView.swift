//
//  ContentView.swift
//  Desafio2
//
//  Created by Student15 on 27/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("Caminhao")
                .resizable()
                .scaledToFill()
            ZStack {
                Image("Caminhao")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                Text("HackaTruck")
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                    .offset(y:-42)
                    .font(.system(size: 25))
                    
            }
            ZStack{
                Rectangle()
                    .fill(Color.black)
                    .frame(width: 200.0, height: 170)
                HStack{
                    Text("Maker")
                        .foregroundColor(Color.yellow)
                        .offset(y: -30)
                        .font(.system(size: 25))
                    Text("Space")
                        .foregroundColor(Color.red)
                        .offset(y: -30)
                        .font(.system(size: 25))
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
}
