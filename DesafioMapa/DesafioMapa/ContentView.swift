//
//  ContentView.swift
//  DesafioMapa
//
//  Created by Student on 06/09/23.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State var paisesModel: Paises = Paises()
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 14.2350, longitude: 51),
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))
    
    @State var atual : Location =  Location(name: "Brasil",
                                            coordinate: CLLocationCoordinate2D(latitude: -15.7213698, longitude: -48.1021689),
                                            flag:"https://www.google.com/imgres?imgurl=https%3A%2F%2Fstatic.todamateria.com.br%2Fupload%2Fba%2Fnd%2Fbandeira-do-brasil-og.jpg&tbnid=7RXnJf2nPEbK0M&vet=12ahUKEwiUhbO0hZaBAxWoCbkGHad0BRMQMygAegQIARBy..i&imgrefurl=https%3A%2F%2Fwww.todamateria.com.br%2Fbandeira-do-brasil%2F&docid=h5JBSWU19WtXhM&w=1200&h=630&q=bandeira%20brasil&ved=2ahUKEwiUhbO0hZaBAxWoCbkGHad0BRMQMygAegQIARBy",
                                            description: "O Brasil, um vasto país sul-americano, estende-se da Bacia Amazônica, no norte, até os vinhedos e as gigantescas Cataratas do Iguaçu, no sul. O Rio de Janeiro, simbolizado pela sua estátua de 38 metros de altura do Cristo Redentor, situada no topo do Corcovado, é famoso pelas movimentadas praias de Copacabana e Ipanema, bem como pelo imenso e animado Carnaval, com desfiles de carros alegóricos, fantasias extravagantes e samba.")
    
    var body: some View {
        
        VStack {
            
            
            Text("Word map")
                .font(.title)
                .fontWeight(.black)
            
            Text(atual.name)
                .font(.title2)
            
            Map(coordinateRegion: $region)
            
            HStack{
            ForEach(paisesModel.PaisesAmerica) {
                local in
                HStack{
                    
                    Button{
                        region = MKCoordinateRegion(
                            center: local.coordinate,
                            span: MKCoordinateSpan(latitudeDelta: 20, longitudeDelta: 20))
                        
                        atual = local
                    }label: {
                        Text(local.name)
                    }
                    
                }
                    
                    
                }
                
            }
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
