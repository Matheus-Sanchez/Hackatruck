//
//  PaisesModel.swift
//  DesafioMapa
//
//  Created by Student on 06/09/23.
//

import Foundation
import MapKit


struct Paises{
    var PaisesAmerica: [Location] = [
        Location(name: "Brasil",
                   coordinate: CLLocationCoordinate2D(latitude: -15.7213698, longitude: -48.1021689),
                   flag:"https://www.google.com/imgres?imgurl=https%3A%2F%2Fstatic.todamateria.com.br%2Fupload%2Fba%2Fnd%2Fbandeira-do-brasil-og.jpg&tbnid=7RXnJf2nPEbK0M&vet=12ahUKEwiUhbO0hZaBAxWoCbkGHad0BRMQMygAegQIARBy..i&imgrefurl=https%3A%2F%2Fwww.todamateria.com.br%2Fbandeira-do-brasil%2F&docid=h5JBSWU19WtXhM&w=1200&h=630&q=bandeira%20brasil&ved=2ahUKEwiUhbO0hZaBAxWoCbkGHad0BRMQMygAegQIARBy",
                   description: "O Brasil, um vasto país sul-americano, estende-se da Bacia Amazônica, no norte, até os vinhedos e as gigantescas Cataratas do Iguaçu, no sul. O Rio de Janeiro, simbolizado pela sua estátua de 38 metros de altura do Cristo Redentor, situada no topo do Corcovado, é famoso pelas movimentadas praias de Copacabana e Ipanema, bem como pelo imenso e animado Carnaval, com desfiles de carros alegóricos, fantasias extravagantes e samba."),
        
        
        Location(name: "Bahamas",
                     coordinate: CLLocationCoordinate2D(latitude: 24.502464, longitude: -77.920238),
                     flag: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPwAAAB+CAMAAAA3DYyGAAAAkFBMVEUAd4sAAAD/xywTd4sAe5D/zS3/zy7/ySwAHyQAND0ASFQAWWgAIykAOEEAdIcAcYOmgx0AZHUADA4AGh8Aanz5xCsAKC4APkgALDQAVGKthx00KQnntihcSRCIbBcAX28AExYtgI2CZxjMoCPVpyVnURKUdRoYEgS4kSBHNwxyWhSdexsjGwbCmSJNPQ0pIAfwLhxyAAACzUlEQVR4nO2di1rTQBhEO7W1WkCwiFyVclEQRd7/7QglQFqyTTbZTfefyXmD8yXT3cleOvi8OxrIAkwHsvrIOFa1f5LHp6+a+nhGM/p4QTH6r/KYbcnZo8C2WvSxxM4XKX2sMB0J6a/KY3auY/9OHvj+TUW/RB44FIl+qXw245UY9R3y2FeIvkseOOKPvls+iz77u79Onr7srpfHPvWMt0Keu+xWyjOX3RryvGW3jjxt2a0nn5VdxujXlaeMfn15zOmi7yHPV3a95Nm+c3nKc814veWZvnP5yxOV3SbyNMNeM3nMKKLfUJ5jZbexPEPZbSFvP/qt5K2X3XbyWdm1POy1lTc9420vb3hlN4S82RlvEPmnsnvxwRyh5IHLg/FkaItw8sDJeLxpHT9CyuP06qOphx9UHvhxZkk/sDzwc2jn3Q8un0XfzMOPII/TayP6MeSBXzaiH0ce+G0h+rHkcXOb/pwnmjzwJ/noR5QH7hKPflR54O8kZfvI8vh3n/DDjy0P/E/33Y8vvyi7m9Yspwt5YC/NYa8beTwkWXY7kk+z7HYmn5Xd5KLfoXwW/U3brtDLd4Pway/8g6c81AlPcoSnt8LFRrnSCn/MuDtI+LEP+w+Ycbi5T3N4KxJt0WKS6PBWJNZyVfqPfdgvVIbm1oh6vzkhJEbWpnP6DUmBEN6KJrwJUXj76Vx447HwlnPhwwbCx0yUDxgJHy0TPlQofJxU+SCx9bDnNFEXvjzA6iG6ErzdKcKe46nOdS+ql7rwJUHK10ORDG9F6qoLXwlnuri6qaNuvLi6qeFOGPacSnX7xdVNhbrypb9Mc9kS1qkLX/R9RBz2HGfYeYqrG1fY2d/4BeVhpyqubkrU2Yqrm3fqRF+pKll1N7vi2oRldcMrrk0oqpPeYu+mEHbW4urmLewSI/syuTpzcXWzUGdYcW3CYi6rqS7+d8yaYX/mEVVYaGWfULQdAAAAAElFTkSuQmCC",
                     description: "As Bahamas são um arquipélago no Oceano Atlântico cujo terreno tem origem nos corais. O país tem mais de 700 ilhas e ilhotas, muitas desabitadas e outras cheias de resorts. A Grand Bahama, mais ao norte, e a Paradise Island, com muitos hotéis de grande porte, são as mais conhecidas. Há locais para mergulho, como a enorme Barreira de Coral de Andros, o Thunderball Grotto (locação de filmes de James Bond) e os jardins de corais negros de Bimini."),
        
        Location(name: "Canada",
                     coordinate: CLLocationCoordinate2D(latitude: 57.039869, longitude: -103.066031),
                     flag: "https://pt.wikipedia.org/wiki/Canad%C3%A1",
                     description: "O Canadá é um país norte-americano que se estende desde os EUA, no sul, até o Círculo Polar Ártico, no norte. Entre suas grandes cidades estão a gigantesca Toronto; Vancouver, centro cinematográfico da costa oeste; Montreal e Québec City, que falam francês; e a capital, Ottawa. As vastas regiões de natureza selvagem do Canadá compreendem o Parque Nacional de Banff, repleto de lagos nas Montanhas Rochosas. Abriga também as Cataratas do Niágara, um famoso conjunto de enormes cachoeiras. ― Google")
    ]
}

