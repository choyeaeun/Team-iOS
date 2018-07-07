//
//  HomeDetailTVCell1.swift
//  TravelMaker
//
//  Created by 조예은 on 2018. 7. 7..
//  Copyright © 2018년 GGOMMI. All rights reserved.
//

import UIKit

class HomeDetailTVCell1: UITableViewCell {

    @IBOutlet weak var expertProfile1: UIImageView!
    @IBOutlet weak var expertProfile2: UIImageView!
    @IBOutlet weak var expertProfile3: UIImageView!
    @IBOutlet weak var nickName1: UILabel!
    @IBOutlet weak var nickName2: UILabel!
    @IBOutlet weak var nickName3: UILabel!
    @IBOutlet weak var tourType1: UILabel!
    @IBOutlet weak var tourType2: UILabel!
    @IBOutlet weak var tourType3: UILabel!
    @IBOutlet weak var City1: UILabel!
    @IBOutlet weak var City2: UILabel!
    @IBOutlet weak var City3: UILabel!
    @IBOutlet weak var starRateImage1: UIImageView!
    @IBOutlet weak var starRateImage2: UIImageView!
    @IBOutlet weak var starRateImage3: UIImageView!
    @IBOutlet weak var starRateLB1: UILabel!
    @IBOutlet weak var starRateLB2: UILabel!
    @IBOutlet weak var starRateLB3: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
