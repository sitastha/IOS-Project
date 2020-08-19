//
//  TableViewCellViewModel.swift
//  FamousPaintings
//
//  Created by sitha on 08/08/2020.
//  Copyright © 2020 epita. All rights reserved.
//

import Foundation

class TableViewCellViewModel {
    func getTitle(_ painting: Paintings) -> String {
        return "\(painting.title) "
    }
    func getArtist(_ painting: Paintings) -> String {
        return "\(painting.artistName) "
    }

    func getAge(_ painting: Paintings) -> String {
        return "\(painting.artistAge)"
    }
    
  
}
