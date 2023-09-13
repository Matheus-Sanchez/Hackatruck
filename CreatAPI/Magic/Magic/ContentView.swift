//
//  ContentView.swift
//  Magic
//
//  Created by Student on 13/09/23.
//

import SwiftUI

struct ContentView: View {

    @StateObject var viewModel = ViewModel()

    var body: some View {
        NavigationStack{
            VStack{
                Text("\(viewModel.chars.count)")
                ForEach(viewModel.chars, id: \.id){ index in
                    if( index.name != nil){
                        Text(index.name!)
                            .foregroundColor(.blue)
                    }
                    
                }
                
            }
        }
        .onAppear(){
            viewModel.fetch()
            
            
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
