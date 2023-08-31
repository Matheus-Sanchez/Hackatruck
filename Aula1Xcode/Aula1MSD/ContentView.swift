//
//  ContentView.swift
//  Aula1MSD
//
//  Created by Student on 31/08/23.
//

import SwiftUI

struct ContentView: View {
    //aqui declara variavel
    var body: some View {//codigo
                        //a ordem do codigo importa
        //vstack (texto em vertical)
        //Hstack (texto em horizontal)
        //ZStack (sobrepor)
        
        VStack(spacing: 19) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            Spacer()
            Text("Hello, world!")
                
//            Spacer()
//                .frame(height: 0.0)
                
            Text("teste")
                
        }
        .padding()
    }
}


//só para renderizar o preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
