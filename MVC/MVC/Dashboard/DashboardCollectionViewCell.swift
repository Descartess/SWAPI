//
//  DashboardCollectionViewCell.swift
//  MVC
//
//  Created by Paul Nyondo on 06/09/2018.
//  Copyright © 2018 Paul Nyondo. All rights reserved.
//

import UIKit

class DashboardCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak private var titleLabel: UILabel!
    
    func setUpCell(title: String?) {
        titleLabel.text = title
        
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = false
        self.layer.shadowOpacity = 0.06
        self.layer.shadowOffset = CGSize(width: 1, height: 6)
        self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds,
                                             cornerRadius: self.contentView.layer.cornerRadius).cgPath
        self.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
