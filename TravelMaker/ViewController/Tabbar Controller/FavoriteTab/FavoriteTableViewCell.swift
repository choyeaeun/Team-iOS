//
//  FavoriteTableViewCell.swift
//  TravelMaker
//
//  Created by 이충신 on 2018. 7. 4..
//  Copyright © 2018년 GGOMMI. All rights reserved.
//

import UIKit

class FavoriteTableViewCell: UITableViewCell {

    //TableViewCell의 프로퍼티들
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    //starRateImage

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        profileImage.layer.cornerRadius = profileImage.frame.size.width/2
        profileImage.clipsToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }

}



