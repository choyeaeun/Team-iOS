//
//  PlaceTVCell.swift
//  TravelMaker
//
//  Created by 조예은 on 2018. 7. 7..
//  Copyright © 2018년 GGOMMI. All rights reserved.
//

import UIKit

class PlaceTVCell: UITableViewCell {

    @IBOutlet weak var infoTableView: UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension PlaceTVCell{
    func setTableViewDataSourceDelegate
        <D:UITableViewDataSource & UITableViewDelegate>(_ dataSourceDelegate: D, forRow row: Int){
        
        infoTableView.dataSource = dataSourceDelegate
        infoTableView.delegate = dataSourceDelegate
        
        infoTableView.reloadData()
    }
}
