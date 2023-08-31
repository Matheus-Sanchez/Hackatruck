//
//  D3.swift
//  Aula1MSD
//
//  Created by Student on 31/08/23.
//

import SwiftUI

struct D3: View {
    @State private var showingAlert = false
    @State var name: String = ""
    var body: some View {
        ZStack{
            
            
            
            Image("caminhao")
                .resizable()
                .scaledToFill()
                .opacity(0.2)
                .frame(height: 550)
                
            

            VStack{
                Text("Bem vindo, \(name)")
                    .font(.title)
                    .fontWeight(.bold)
                TextField("Nome", text: $name)
                    .padding(.leading, 400.0)
                
                
                Spacer()
                
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 10.0)
                    .frame(width: 250,height: 100)
                Image("truck")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 10.0)
                    .frame(width: 250,height: 100)
                Spacer()
                
                Button("Entrar") {
                            showingAlert = true
                        }
                        .alert(isPresented:$showingAlert) {
                            Alert(
                                title: Text("ALERTA!"),
                                message: Text("Você irá iniciar o desafio da aula agora"),
                                dismissButton: .default(Text("Vamos lá!"))
                            )
                        }
                    
                }
                    
                }

            }
            
            
            
        }
    

struct D3_Previews: PreviewProvider {
    static var previews: some View {
        D3()
    }
}
