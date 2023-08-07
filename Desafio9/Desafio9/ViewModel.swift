//
//  ViewModel.swift
//  Desafio9
//
//  Created by Student15 on 04/08/23.
//

import SwiftUI
import Foundation

class ViewModel: ObservableObject {
    
    @Published var agents : [Agent] = []
    
    func fetch(){
        guard let url = URL(string: "https://valorant-api.com/v1/agents")
        else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){
            [weak self] data, _, error in guard let data = data, error == nil else{
                return
            }
            
            do{
                let parsed = try JSONDecoder().decode(Agents.self, from: data)
                
                DispatchQueue.main.async{
                    self?.agents = parsed.data!
                }
            }catch{
                print(error)
            }
        }
        task.resume()
    }
}

//struct ViewModel_Previews: PreviewProvider {
//    static var previews: some View {
//        ViewModel()
//    }
//}
