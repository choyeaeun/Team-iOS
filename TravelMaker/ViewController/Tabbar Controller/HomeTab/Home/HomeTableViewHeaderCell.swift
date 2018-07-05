//
//  HomeTableViewHeaderCell.swift
//  TravelMaker
//
//  Created by 이충신 on 2018. 7. 4..
//  Copyright © 2018년 GGOMMI. All rights reserved.
//

import UIKit

class HomeTableViewHeaderCell: UITableViewCell {
    
    
    @IBOutlet weak var continentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        continentLabel.layer.borderWidth = 0.7
        continentLabel.layer.borderColor = UIColor.gray.cgColor
        continentLabel.layer.cornerRadius = continentLabel.frame.size.width/4
        continentLabel.clipsToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

