//
//  ContentView.swift
//  Desafio9
//
//  Created by Student15 on 04/08/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    @State private var mostrarSheet = false
    
    
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(colors: [.red, .black],
                                               startPoint: .top,
                                               endPoint: .center)
                                .ignoresSafeArea()
                VStack {
                    Image("va-logo")
                        .resizable()
                        .frame(width: 300, height: 270)
                        //.scaledToFit()
                    
 
                    ScrollView(){
                        ForEach(viewModel.agents, id: \.uuid){
                            agent in
                            NavigationLink(destination: AgentView(currentAgent: agent)){
                                VStack{
                                    AsyncImage(url: URL(string:agent.displayIcon!)!) { image in
                                        image
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                    } placeholder: {
                                        Image(systemName: "photo.fill")
                                    }.frame(width:200)
                                    
                                    
                                    
//                                    Text(agent.displayName!)
//                                        .font(.custom("valorantFont", size: 20))
//                                        .foregroundColor(.white)
                                        
                                        
                                }
                            }
                        }
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
