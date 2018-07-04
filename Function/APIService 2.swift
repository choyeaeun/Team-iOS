//
//  APIService.swift
//  TravelMaker
//
//  Created by 이충신 on 2018. 7. 3..
//  Copyright © 2018년 GGOMMI. All rights reserved.
//

import Foundation

protocol APIService {
    
}

extension APIService {
    
    static func url(_ path: String) -> String {
        return "https://" + path
    }
}
