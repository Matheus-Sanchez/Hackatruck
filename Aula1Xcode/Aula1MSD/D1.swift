//
//  D1.swift
//  Aula1MSD
//
//  Created by Student on 31/08/23.
//

import SwiftUI

struct D1: View {
    var body: some View {
        VStack{
        Image("caminhao")
            .resizable()
            .scaledToFit()
            .padding(.horizontal)
                    
            Text("HackaTruck")
                .foregroundColor(.blue)
                .font(.title)
                .fontWeight(.bold)
            
            HStack{
                Text("Maker")
                    .foregroundColor(.yellow)
                    .fontWeight(.bold)
                    .font(.title2)
                Text("Space")
                    .foregroundColor(.red)
                    .fontWeight(.bold)
                    .font(.title2)
            }
        }
    }
}

struct D1_Previews: PreviewProvider {
    static var previews: some View {
        D1()
    }
}
