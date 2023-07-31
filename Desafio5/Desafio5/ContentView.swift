//
//  ContentView.swift
//  Desafio5
//
//  Created by Student15 on 31/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Image(systemName: "homekit")
                }
            SearchView()
                .foregroundColor(Color.black)
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }
            PhotoView()
                .tabItem {
                    Image(systemName: "photo")
                }
            MessageView()
                .tabItem {
                    Image(systemName: "message")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }
            
        }
        //.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
