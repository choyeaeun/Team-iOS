//
//  FavoriteCollectionViewCell.swift
//  TravelMaker
//
//  Created by 이충신 on 2018. 7. 4..
//  Copyright © 2018년 GGOMMI. All rights reserved.
//

import UIKit

class FavoriteCVCell: UICollectionViewCell {
    
    
    @IBOutlet weak var favoriteCountryImage: UIImageView!
    
    //CollectionViewCell의 프로퍼티
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        favoriteCountryImage.layer.cornerRadius = favoriteCountryImage.frame.size.width/2
        favoriteCountryImage.clipsToBounds = true
    }
    
    
}
