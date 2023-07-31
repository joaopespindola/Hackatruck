//
//  Modo2.swift
//  Desafio6
//
//  Created by Student15 on 31/07/23.
//

import SwiftUI

struct Modo2: View {
    
    @State private var mostrarSheet = false
    
    var body: some View {
        //Só arrastar para baixo pra sumir a Sheet
        Button("Mostrar Sheet"){
            mostrarSheet = true
        }.sheet(isPresented: $mostrarSheet){
            SheetView()
        }
    }
}

struct Modo2_Previews: PreviewProvider {
    static var previews: some View {
        Modo2()
    }
}
