//
//  HomeCollectionViewCell.swift
//  TravelMaker
//
//  Created by 이충신 on 2018. 7. 4..
//  Copyright © 2018년 GGOMMI. All rights reserved.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var countryBtn: UIButton!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        countryBtn.layer.cornerRadius = countryBtn.frame.size.width/2 // this value vary as per your desire
        countryBtn.clipsToBounds = true
    }
}
