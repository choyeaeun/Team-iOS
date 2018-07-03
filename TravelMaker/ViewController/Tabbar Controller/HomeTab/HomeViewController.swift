//
//  HomeViewController.swift
//  TravelMaker
//
//  Created by 이충신 on 2018. 7. 2..
//  Copyright © 2018년 GGOMMI. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var sectionNum:Int = -1
    var countryCount:Int = 0
    
    var continentArray = ["a", "e", "n"]
    
    var asiaImageArray = [#imageLiteral(resourceName: "background"), #imageLiteral(resourceName: "setting"), #imageLiteral(resourceName: "ic_male")]
    var europeImageArray = [#imageLiteral(resourceName: "profile"), #imageLiteral(resourceName: "setting"),#imageLiteral(resourceName: "sopt")]
    var northImageArray = [#imageLiteral(resourceName: "speech-bubble-2"),#imageLiteral(resourceName: "ic_male"),#imageLiteral(resourceName: "sopt")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell") as! HomeTableViewCell
        
        sectionNum = indexPath.section
        
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return continentArray.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewHeaderCell") as! HomeTableViewHeaderCell
        
        if section == 0 {
            cell.continentLabel.text = "  아시아  "
        }else if section == 1 {
            cell.continentLabel.text = "  유럽  "
        }else {
            cell.continentLabel.text = "  북아메리카  "
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat {
        return 0.00001
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell
        
        if sectionNum == 0 {
            cell.countryBtn.setImage(asiaImageArray[indexPath.row], for: UIControlState.normal)
        }else if sectionNum == 1 {
            
            cell.countryBtn.setImage(europeImageArray[indexPath.row], for: UIControlState.normal)
        }else {
            cell.countryBtn.setImage(northImageArray[indexPath.row], for: UIControlState.normal)
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if sectionNum == 0 {
            countryCount = asiaImageArray.count
        }else if sectionNum == 1 {
            countryCount = europeImageArray.count
        }else {
            countryCount = northImageArray.count
        }
        
        return countryCount
    }
    
    //    추후 구현
    //    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    //        <#code#>
    //    }
    
}



//class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
//
//    var countryImageArray = [#imageLiteral(resourceName: "background"), #imageLiteral(resourceName: "한국"), #imageLiteral(resourceName: "ic_male")]
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell
//
//        cell.countryBtn.setImage(countryImageArray[indexPath.row], for: UIControlState.normal)
//
//        return cell
//    }
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//
//        return countryImageArray.count
//    }
//
////    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
////
////
////    }
//
//
//}
