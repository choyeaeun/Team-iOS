//
//  MoreApplyViewController.swift
//  TravelMaker
//
//  Created by 이충신 on 2018. 7. 5..
//  Copyright © 2018년 GGOMMI. All rights reserved.
//

import UIKit

class MoreApplyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var applyTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        applyTableView.delegate = self;
        applyTableView.dataSource = self;
        
        
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = applyTableView.dequeueReusableCell(withIdentifier: "MoreApplyTableViewCell") as! MoreApplyTableViewCell
        
        
        
        return cell
    }
}
