//
//  Structs.swift
//  Desafio7
//
//  Created by Student15 on 01/08/23.
//

import Foundation
//cada item da lista precisa ter um identificador único "Identifiable"
//scroll horizontal
struct Suggestions : Identifiable {
    var id: Int
    var albumCover : String
    var albumName : String
}

struct Song : Identifiable {
    var id: Int
    var name : String
    var artist : String
    var capa : String
}
