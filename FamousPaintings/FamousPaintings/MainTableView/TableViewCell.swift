//
//  TableViewCell.swift
//  MyApplication
//
//  Created by sitha on 08/08/2020.
//  Copyright © 2020 epita. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var imageArt: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    var viewModel: TableViewCellViewModel?

    override func awakeFromNib() {
        super.awakeFromNib()
        viewModel = TableViewCellViewModel()
        // Initialization code
    }

    func configure(_ painting: Paintings?) {
        guard let painting = painting else {
            return
        }
        titleLabel.text = viewModel?.getTitle(painting)
        artistLabel.text = "Artist Name: " + (viewModel?.getArtist(painting) ?? "")
        ageLabel.text = " Artist Age: " + (viewModel?.getAge(painting) ?? "")
        imageArt.image = UIImage(named: painting.title)
    
    }
}
