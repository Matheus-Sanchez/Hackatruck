//
//  D2.swift
//  Aula1MSD
//
//  Created by Student on 31/08/23.
//

import SwiftUI

struct D2: View {
    var body: some View {
        
        
            
            VStack{
                        Image("caminhao")
                            .resizable()
                            .scaledToFit()
                            .padding(.bottom, 10.0)
                        Spacer()
                ZStack{
                    
                    Image("caminhao")
                        .resizable()
//                        .scaledToFit()
                       // .padding(.all, 33.0)
                        .clipShape(Circle())
                    
                    
                    Text("HackaTruck")
                        .foregroundColor(.blue)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom, 100.0)
                    Spacer()
                }
                        
                        Spacer()
                        
                ZStack{
                    Rectangle()
                        .size(.init(width: 250, height: 250))
                        .padding([.top, .leading, .trailing], 74.0)
                    VStack{
                        Spacer()
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
                        Spacer()
                    }
                }
                        
                }
                        
        }
        
       
    
}

struct D2_Previews: PreviewProvider {
    static var previews: some View {
        D2()
    }
}
