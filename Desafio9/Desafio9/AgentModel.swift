//
//  AgentModel.swift
//  Desafio9
//
//  Created by Student15 on 04/08/23.
//

import Foundation
import SwiftUI

    struct Agents: Decodable{
        let status: Int?
        let data: [Agent]?
    }
    
    struct Agent: Decodable{
        let uuid: String?
        let displayName: String?
        let killfeedPortrait: String?
        let developerName: String?
        let displayIcon: String?
        let background: String?
        let description: String?
    }
