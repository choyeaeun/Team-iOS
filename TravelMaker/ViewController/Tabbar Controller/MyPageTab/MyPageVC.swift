//
//  MyPageViewController.swift
//  TravelMaker
//
//  Created by 이충신 on 2018. 7. 2..
//  Copyright © 2018년 GGOMMI. All rights reserved.
//

import UIKit

class MyPageVC: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //배경이미지 설정
        //backgroundImage.image = UIImage
    }

    override func viewWillAppear(_ animated: Bool) {
        makeNavImg()
    }

    
  
}
