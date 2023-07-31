//
//  ContentView.swift
//  Desafio3
//
//  Created by Student15 on 27/07/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var showingAlert = false
    
    var body: some View {
        VStack {
            ZStack{
                Image("Caminhao")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()//ignorar os cantos de segurança
                    .blur(radius: 3)
                    .opacity(0.2)
                    .foregroundColor(.accentColor)
                VStack{
                    Text("Bem vindo, \(name)")
                        .font(.largeTitle)
                        .font(.system(size: 30))
                    
                    TextField("Digite seu nome aqui", text: $name)
                        .padding()
                        .multilineTextAlignment(.center)
                        
                    Spacer()
                    
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 500, height:90)
                    
                    Image("truck")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 500, height:90)
                    
                    Spacer()
                    
                    Button("Entrar") {
                        showingAlert = true
                    }
                    
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
