//
//  ContentView.swift
//  Desafio6
//
//  Created by Student15 on 31/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack {
                NavigationLink(destination: Modo1()){
                    Text("Modo 1")
                }
                NavigationLink(destination: Modo2()){
                    Text("Modo 2")
                }
                NavigationLink(destination: Modo3()){
                    Text("Modo 3")
                }
                
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
