//
//  DetailsViewController.swift
//  FamousPaintings
//
//  Created by sitha on 8/8/20.
//  Copyright © 2020 epita. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var artistName: UILabel!
    
    @IBOutlet weak var artistNationality: UILabel!
    
    @IBOutlet weak var centuryLabel: UILabel!
    
    @IBOutlet weak var artistAgeLabel: UILabel!
    
    
   var viewModel: Paintings?
    
    override func viewDidLoad() {
        super.viewDidLoad()

       configure(viewModel)
        
    }
    

    func configure(_ painting: Paintings?)
    {
        guard let painting = painting else
        {
            return
        }
     titleLabel.text = viewModel?.title
     artistName.text = "Artist Name: " + (viewModel?.artistName ?? "")
     artistNationality.text = "Artist Nationality: " + (viewModel?.artistNationality ?? "")
     centuryLabel.text = "Century: " + (viewModel?.century ?? "")
        artistAgeLabel.text = "Artist Age: " + "\(viewModel?.artistAge ?? 0)"
     imageView.image = UIImage(named: painting.title)
      
    }
    
   

}
