//
//  TableViewModel.swift
//  FamousPaintings
//
//  Created by sitha on 08/08/2020.
//  Copyright © 2020 epita. All rights reserved.
//

import Foundation

class TableViewModel {
    private var array: [Paintings]
    
    init() {
        self.array = [Paintings(title: "Mona Lisa", artistName: "Leonardo Da Vinci", artistNationality: "Italian",century: "15th Century", artistAge: 67),

                      Paintings(title: "The Arnolfini Portrait", artistName: "Jan Van Eycle", artistNationality: "Flemish",century: "15th Century", artistAge: 45),
                      Paintings(title: "The Swing", artistName: "Jean Honore Fragonrd", artistNationality: "French",century: "18th Century", artistAge: 74),
                      Paintings(title: "The Scream", artistName: "Edvard Munch", artistNationality: "Norwegion",century: "19th Century", artistAge: 80),
                      Paintings(title: "Las Meninas", artistName: "Diego Velazuez", artistNationality: "Spanich",century: "17th Century", artistAge: 61),
                      Paintings(title: "Impression Sunrise", artistName: "Clande Monet", artistNationality: "French",century: "19th Century", artistAge: 86),
                      Paintings(title: "The Night Watch", artistName: "Rembrandt", artistNationality: "Dutch",century: "17th Century", artistAge: 63),
                      Paintings(title: "The Kiss", artistName: "Gustav Klimt", artistNationality: "Austrian",century: "20th Century", artistAge: 55),
                      Paintings(title: "TheBoatTrip", artistName: "Mary Cassatt", artistNationality: "American",century: "19th Century", artistAge: 82),
                      
                      Paintings(title: "TheTowerOfBabel", artistName: "Pieter Bruegel the Elder", artistNationality: "Dutch",century: "16th Century", artistAge: 44),
                      Paintings(title: "TheGleaners", artistName: "Jean-Francois Millet", artistNationality: "French",century: "19th Century", artistAge: 60),
                      
                      Paintings(title: "Primavera", artistName: "Sandro Botticelli", artistNationality: "Italian",century: "15th Century", artistAge: 65),
                      
                      Paintings(title: "TheSleepingGypsy", artistName: "Henri Rousseau ", artistNationality: "French",century: "19th Century", artistAge: 66),
                      Paintings(title: "MusiciansCaravaggio", artistName: "Caravaggio", artistNationality: "Italian",century: "19th Century", artistAge: 86),
                      Paintings(title: "Napoleon", artistName: "Jacques-Louis David ", artistNationality: "French",century: "17th Century", artistAge: 77),
                      Paintings(title: "CharlesThreePositions", artistName: " Anthony van Dyck", artistNationality: "French",century: "17th Century", artistAge: 42),
                      Paintings(title: "ViewOfToledo", artistName: " El Greco", artistNationality: "Spanish",century: "16th Century", artistAge: 73),
                      Paintings(title: "TheGrossClinic", artistName: "Thomas Eakins ", artistNationality: "American",century: "19th Century", artistAge: 871),
        ]
    }
    
    func getNumberOfRows() -> Int {
        return array.count
    }
    
    func paintingArtists(indexPath: IndexPath) -> Paintings {
        return array[indexPath.row]
    }
}
