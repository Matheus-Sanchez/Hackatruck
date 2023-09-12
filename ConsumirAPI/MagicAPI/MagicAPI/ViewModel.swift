//
//  View Model.swift
//  DisneyAPI
//
//  Created by Student on 12/09/23.
//

import SwiftUI



class ViewModel : ObservableObject {

    @Published var chars : [Card] = []
    
    func fetch(){
        guard let url = URL(string: "https://api.disneyapi.dev/character" ) else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
                guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Card].self, from: data)
                
                DispatchQueue.main.async {
                    self?.chars = parsed
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
}
