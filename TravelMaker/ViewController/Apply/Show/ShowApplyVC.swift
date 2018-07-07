//
//  ShowApplyViewController.swift
//  TravelMaker
//
//  Created by 조예은 on 2018. 7. 6..
//  Copyright © 2018년 GGOMMI. All rights reserved.
//

import UIKit

class ShowApplyVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var showApplyTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.showApplyTableView.dataSource = self;
        self.showApplyTableView.delegate = self;
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        if section == 0 {
//            return 1
//        }else {
//            //댓글 숫자로 구현
//            return 4
//        }
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell1 = showApplyTableView.dequeueReusableCell(withIdentifier: "ShowApplyTVCell1") as! ShowApplyTVCell1
            return cell1
        }
        else{
            let cell2 = showApplyTableView.dequeueReusableCell(withIdentifier: "ShowApplyTVCell2") as! ShowApplyTVCell2
            return cell2
        }
    }
    
}

