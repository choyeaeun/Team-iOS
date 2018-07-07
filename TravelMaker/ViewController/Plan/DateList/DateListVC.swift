//
//  DateListVC.swift
//  TravelMaker
//
//  Created by 조예은 on 2018. 7. 7..
//  Copyright © 2018년 GGOMMI. All rights reserved.
//

import UIKit

class DateListVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var dateListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dateListTableView.dequeueReusableCell(withIdentifier: "DateListTVCell") as! DateListTVCell
        
        return cell
    }

}
