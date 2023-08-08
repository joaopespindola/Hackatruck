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
            Color(.lightGray)
                .ignoresSafeArea()
                .blur(radius: 10)
            AsyncImage(url: URL(string:currentAgent.background!)!) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    
                
            } placeholder: {
                Image(systemName: "photo.fill")
            }
            VStack{
//                Rectangle()
//                    .foregroundColor(.white)
//                    .frame(height: 20)
                VStack{
                    AsyncImage(url: URL(string:currentAgent.bustPortrait!)!) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    } placeholder: {
                        Image(systemName: "photo.fill")
                    }.frame(width: 300, height: 300)
                        .offset(x: -118)
                }
//                Rectangle()
//                    .foregroundColor(.white)
//                    .frame(height: 20)
//                Text("Created by \(currentAgent.developerName!)")
//                    .font(.custom("valorantFont", size: 14))
//                
                Spacer()
                
                ZStack{
                    Rectangle()
                        .foregroundColor(.white)
                        .blur(radius:3)
                        .opacity(0.8)
                    Text(currentAgent.description!)
                        .font(.custom("valorantFont", size:25))
                        .font(.system(size:30))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .frame(width: 300)
                }
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
