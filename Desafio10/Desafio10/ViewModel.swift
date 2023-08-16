//
//  ViewModel.swift
//  Desafio10
//
//  Created by Student15 on 09/08/23.
//

import SwiftUI
import Foundation

class ViewModel: ObservableObject {
    
    @Published var estacionamento : [Parking] = []
    
    func fetch(){
        guard let url = URL(string: "http://127.0.0.1:1880/joaopespindolaRead")
        else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){
            [weak self] data, _, error in guard let data = data, error == nil else{
                return
            }
            
            do{
                let parsed = try JSONDecoder().decode([Parking].self, from: data)
                
                DispatchQueue.main.async{
                    self?.estacionamento = parsed
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
