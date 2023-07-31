//
//  HomeView.swift
//  Desafio5
//
//  Created by Student15 on 31/07/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        List(1...50, id: \.self) {
                //interpolando com ele mesmo
                Text("Item \($0)")
            }
        }
    }

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
