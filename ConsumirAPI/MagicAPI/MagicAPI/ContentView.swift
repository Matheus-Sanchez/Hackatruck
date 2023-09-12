//
//  ContentView.swift
//  DisneyAPI
//
//  Created by Student on 12/09/23.
//

import SwiftUI




struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack{
            
            ForEach(viewModel.chars){ index in
                
                Text(index.name!)
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
