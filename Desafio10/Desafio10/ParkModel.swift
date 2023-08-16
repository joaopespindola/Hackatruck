//
//  ParkModel.swift
//  Desafio10
//
//  Created by Student15 on 09/08/23.
//

import Foundation

struct Parking: Decodable, Hashable{
    let nomeEstacionamento: String?
    let Endereco: String?
    let Vagas: String?
    let Carros: [Carro]?
}

struct Carro: Decodable, Hashable{
    let Foto: String?
    let Modelo: String?
    let Ano: String?
    let Cor: String?
    let Preço: String?
}
