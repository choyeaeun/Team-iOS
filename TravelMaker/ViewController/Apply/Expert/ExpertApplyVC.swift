//
//  ExpertApplyVC.swift
//  TravelMaker
//
//  Created by 조예은 on 2018. 7. 6..
//  Copyright © 2018년 GGOMMI. All rights reserved.
//

import UIKit

class ExpertApplyVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var expertApplyTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.expertApplyTableView.dataSource = self;
        self.expertApplyTableView.delegate = self;
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (section == 0 || section == 2){
            return 1
        }else {
            //여행경로 숫자로 구현
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = expertApplyTableView.dequeueReusableCell(withIdentifier: "ExpertApplyTVCell1") as! ExpertApplyTVCell1
            
            return cell
        }else if indexPath.section == 1{
            let cell = expertApplyTableView.dequeueReusableCell(withIdentifier: "ExpertApplyTVCell2") as! ExpertApplyTVCell2
            
            return cell
        }else {
            let cell = expertApplyTableView.dequeueReusableCell(withIdentifier: "ExpertApplyTVCell3") as! ExpertApplyTVCell3
            
            return cell
        }
    
    }
}
