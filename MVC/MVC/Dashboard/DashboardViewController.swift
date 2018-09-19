//
//  DashboardViewController.swift
//  MVC
//
//  Created by Paul Nyondo on 06/09/2018.
//  Copyright © 2018 Paul Nyondo. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    var categories = ["People", "Spaceships", "Planets", "Species", "Films", "Vehicles"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}

extension DashboardViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dashboardCell", for: indexPath) as? DashboardCollectionViewCell {
            cell.setUpCell(title: categories[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
    }
}

extension DashboardViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let availableWidth = collectionView.frame.width
        
        let numberOfItemPerColumn: CGFloat = 2.1
        let cellWidth = availableWidth / numberOfItemPerColumn
        
        return CGSize(width: cellWidth, height: 200)
    }
}
