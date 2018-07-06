//
//  ShowApplyTableViewCell1.swift
//  TravelMaker
//
//  Created by 조예은 on 2018. 7. 6..
//  Copyright © 2018년 GGOMMI. All rights reserved.
//

import UIKit

class ShowApplyTVCell1: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nickNameLB: UILabel!
    @IBOutlet weak var writeDateLB: UILabel!
    @IBOutlet weak var viewCountLB: UILabel!
    @IBOutlet weak var startTravelDateLB: UILabel!
    @IBOutlet weak var endTravelDateLB: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
