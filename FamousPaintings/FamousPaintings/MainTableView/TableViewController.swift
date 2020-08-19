//
//  TableViewController.swift
//  FamousPaintings
//
//  Created by sitha on 08/08/2020.
//  Copyright © 2020 epita. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: TableViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        viewModel = TableViewModel()
    }

}

extension TableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let viewModel = viewModel else {
            return 0
        }
        return viewModel.getNumberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "paintingCell") as? TableViewCell else {
            return UITableViewCell()
            
        }
        let painting = viewModel?.paintingArtists(indexPath: indexPath)
        cell.configure(painting)
        
        cell.contentView.layer.cornerRadius = cell.contentView.frame.height / 3.5
        cell.imageArt.layer.cornerRadius = cell.imageArt.frame.height / 5
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         
           
           let vc = self.storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        
           vc.viewModel = viewModel?.paintingArtists(indexPath: indexPath)
           
           self.navigationController?.pushViewController(vc, animated: true)
       }
       
    
}

extension TableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

