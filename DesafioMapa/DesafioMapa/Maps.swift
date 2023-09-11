//
//  Maps.swift
//  DesafioMapa
//
//  Created by Student on 06/09/23.
//

import Foundation
import MapKit

struct Location : Identifiable{
    let id = UUID()
    let name : String
    let coordinate : CLLocationCoordinate2D
    let flag : String
    let description : String
}


