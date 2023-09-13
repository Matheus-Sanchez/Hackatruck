//
//  ViewModel.swift
//  Magic
//
//  Created by Student on 13/09/23.
//

import SwiftUI



class ViewModel : ObservableObject {

    @Published var chars : [Card] = []
    
    func fetch(){
        guard let url = URL(string: "https://api.magicthegathering.io/v1/cards?page=1" ) else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
                guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode(CardsResponse.self, from: data)
                
                DispatchQueue.main.async {
                    self?.chars = parsed.cards
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
}

