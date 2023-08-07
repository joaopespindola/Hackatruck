//
//  AgentView.swift
//  Desafio9
//
//  Created by Student15 on 07/08/23.
//

import SwiftUI

struct AgentView: View {
    var currentAgent: Agent
    var body: some View {
        ZStack{
            AsyncImage(url: URL(string:currentAgent.background!)!) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
            } placeholder: {
                Image(systemName: "photo.fill")
            }
            VStack{
                Rectangle()
                    .foregroundColor(.black)
                    .frame(height: 20)
                VStack{
                    AsyncImage(url: URL(string:currentAgent.killfeedPortrait!)!) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    } placeholder: {
                        Image(systemName: "photo.fill")
                    }.frame(width: 100, height: 100)
                }
                Rectangle()
                    .foregroundColor(.black)
                    .frame(height: 20)
                Text("Created by \(currentAgent.developerName!)")
                    .font(.custom("valorantFont", size: 16))
                
                Text(currentAgent.description!)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    
            }
        }
    }
}
//
//struct AgentView_Previews: PreviewProvider {
//    static var previews: some View {
//        AgentView()
//    }
//}
