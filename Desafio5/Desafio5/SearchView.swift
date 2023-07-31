//
//  SearchView.swift
//  Desafio5
//
//  Created by Student15 on 31/07/23.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.blue)
                .frame(width:275, height: 275)
            Text("Hello, Hackatruck")
                .font(.headline)
            
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
