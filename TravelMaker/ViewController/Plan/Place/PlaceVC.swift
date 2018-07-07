//
//  PlaceVC.swift
//  TravelMaker
//
//  Created by 조예은 on 2018. 7. 7..
//  Copyright © 2018년 GGOMMI. All rights reserved.
//

import UIKit

class PlaceVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var placeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        if tableView.tag == 101 {
            return 1
        }else {
            return 4
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch tableView.tag {
        case 101:
            return 1
        case 201:
            return 1
        case 202:
            return 1
        case 203:
            return 1
        case 204:
            return 1
        default:
            break
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch tableView.tag {
            
        case 101:
            let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceTVCell") as! PlaceTVCell
            return cell
        case 201:
            let cell = tableView.dequeueReusableCell(withIdentifier: "InfoTitleTVCell") as! InfoTitleTVCell
            return cell
        case 202:
            let cell = tableView.dequeueReusableCell(withIdentifier: "InfoMemoTVCell") as! InfoMemoTVCell
            return cell
        case 203:
            let cell = tableView.dequeueReusableCell(withIdentifier: "InfoPriceTVCell") as! InfoPriceTVCell
            return cell
        case 204:
            let cell = tableView.dequeueReusableCell(withIdentifier: "InfoRouteTVCell") as! InfoRouteTVCell
            return cell
        default:
            break
            
        }
        let emptyCell = UITableViewCell()
        return emptyCell
    }

//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        <#code#>
//    }
}
