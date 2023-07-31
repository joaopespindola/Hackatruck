//
//  Modo3.swift
//  Desafio6
//
//  Created by Student15 on 31/07/23.
//

import SwiftUI

struct Modo3: View {
    var body: some View {
        VStack{
            Text("Tamo Percorrendo um caminho, Jão")
            NavigationLink(destination: BackScreen()){
                Text("Acessar Tela")
                    .foregroundColor(.blue)
            }
        }
    }
}

struct Modo3_Previews: PreviewProvider {
    static var previews: some View {
        Modo3()
    }
}
