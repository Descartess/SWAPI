//
//  DashboardViewController.swift
//  MVC
//
//  Created by Paul Nyondo on 06/09/2018.
//  Copyright © 2018 Paul Nyondo. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {
    
    private let service = SWAPIService()
    
    private var urls = [URL?]()
    private var labels = [String?]()
    private var Categories: Category? {
        didSet {
            guard let category = Categories
                else
            { return }
            
            let categoryMirror = Mirror(reflecting: category)
            
            categoryMirror.children.forEach { child in
                labels.append(child.label?.capitalized)
                urls.append(child.value as? URL)
                
            }
        }
    }
    
    @IBOutlet weak private var activityIndicatior: UIActivityIndicatorView!
    @IBOutlet weak private var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.isHidden = true
        collectionView.dataSource = self
        collectionView.delegate = self
        activityIndicatior.startAnimating()
        
        service.getCategories(queue: .main) { [weak self]  result in
            switch result {
            case .failure:
                print("Failure ")
            case let .success(category):
                self?.Categories = category
                self?.reloadData()
            }
        }
    }
    
    func reloadData() {
        activityIndicatior.stopAnimating()
        activityIndicatior.isHidden = true
        collectionView.reloadData()
        collectionView.isHidden = false
        view.layoutIfNeeded()
    }
}

extension DashboardViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return labels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dashboardCell", for: indexPath) as? DashboardCollectionViewCell {
            cell.setUpCell(title: labels[indexPath.row])
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
