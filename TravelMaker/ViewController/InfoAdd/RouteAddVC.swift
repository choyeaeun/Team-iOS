//
//  RouteAddVC.swift
//  TravelMaker
//
//  Created by 이충신 on 2018. 7. 7..
//  Copyright © 2018년 GGOMMI. All rights reserved.
//

import UIKit

class RouteAddVC: UIViewController {
    
    
    @IBOutlet weak var memoView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //메모뷰 설정(테두리 크기)
        self.memoView.layer.borderWidth = 0.5
        self.memoView.layer.borderColor = UIColor.black.cgColor
    }
    
    
}
