//
//  LocationAddVC.swift
//  TravelMaker
//
//  Created by 이충신 on 2018. 7. 7..
//  Copyright © 2018년 GGOMMI. All rights reserved.
//

import UIKit
import GoogleMaps

class LocationAddVC: UIViewController {

    @IBOutlet weak var googleMapsContainer: UIView!
    
    var mapView:GMSMapView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.mapView = GMSMapView(frame: googleMapsContainer.frame)
        
        self.view.addSubview(self.mapView)
        
    }
    
    
}
