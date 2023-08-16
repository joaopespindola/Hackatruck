//
//  ContentView.swift
//  Desafio10
//
//  Created by Student15 on 09/08/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    @State private var mostrarSheet = false
    var body: some View {
        ZStack{
            Image("parkingImage")
                .blur(radius:5)
                .opacity(0.2)
                .ignoresSafeArea()
            VStack{
                ForEach(viewModel.estacionamento, id: \.self){
                    estacionamento in
                    Text(estacionamento.nomeEstacionamento!)
                        .font(.system(size: 40))
                    Text(estacionamento.Endereco!)
                        .font(.system(size: 16))
                        .scaledToFit()
                    Text("Número de vagas: \( estacionamento.Vagas!)")
                        .font(.system(size: 16))
                    Button("Ver Carros No Estacionamento"){
                        mostrarSheet = true
                    }.sheet(isPresented: $mostrarSheet){
                        ScrollView{
                            ForEach(estacionamento.Carros!, id: \.self){
                                carro in
                                
                                AsyncImage(url: URL(string:carro.Foto!)!) { image in
                                    image
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .ignoresSafeArea()
                                    
                                } placeholder: {
                                    Image(systemName: "photo.fill")
                                }.frame(width:400)
                                Text(carro.Modelo!)
                                Text(carro.Cor!)
                                Text(carro.Ano!)
                                Text(carro.Preço!)
                                
                            }
                        }.ignoresSafeArea()
                    }
                    
                }
            }
            
        }.onAppear(){
            viewModel.fetch()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
