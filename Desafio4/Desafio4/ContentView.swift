//
//  ContentView.swift
//  Desafio4
//
//  Created by Student15 on 28/07/23.
//

import SwiftUI

struct ContentView: View {
    @State private var bgcolor: Color = Color("")
    @State private var resultado: String = ""
    @State private var peso = ""
    @State private var altura = ""
    @State private var pesoFloat: Float = 0
    @State private var alturaFloat: Float = 0
    @State private var IMC: Float = 0
    
    var body: some View {
        ZStack {
            bgcolor
                .ignoresSafeArea()
            VStack(spacing: 30){
                Text("Calculadora de IMC")
                    .font(.largeTitle)
                
                TextField("Digite o seu peso", text: $peso)
                    .background(.white)
                    .multilineTextAlignment(.center)
                    .cornerRadius(8)
                    .padding([.leading, .trailing], 40)
                
                TextField("Digite a sua altura", text: $altura)
                    .background(.white)
                    .multilineTextAlignment(.center)
                    .cornerRadius(8)
                    .padding([.leading, .trailing], 40)
                
                
                Button("Calcular") {
                    pesoFloat = Float(peso) ?? 0.0
                    alturaFloat = Float(altura) ?? 1.0
                    IMC = pesoFloat/(alturaFloat*alturaFloat)
                    
                    if(IMC < 18.5){
                        bgcolor = Color("Verde")
                        resultado = "Baixo peso"
                    } else if(IMC >= 18.5 && IMC <= 24.99){
                        bgcolor = Color("VerdeLima")
                        resultado = "Normal"
                    } else if(IMC >= 25 && IMC <= 29.99){
                        bgcolor = Color("Laranja")
                        resultado = "Sobrepeso"
                    } else if(IMC > 30){
                        bgcolor = Color("Vermelho")
                        resultado = "Obesidade"
                    }
                }
                .foregroundColor(Color.white)
                .background(Color.blue)
                .cornerRadius(10)
                .buttonStyle(.borderedProminent)
                
                Spacer()
                
                Text(resultado)
                    .font(.title)
                
                Spacer()
                Image("tabela-IMC")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
