//
//  ExtensionControll.swift
//  TravelMaker
//
//  Created by 이충신 on 2018. 7. 3..
//  Copyright © 2018년 GGOMMI. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func gsno(_ value: String?) -> String { //String 옵셔널 벗기기
        return value ?? ""
    }
    
    func gino(_ value: Int?) -> Int { //Int 옵셔널 벗기기
        return value ?? 0
    }

}


//네비게이션 컨트롤러바에 이미지를 삽입하는 함수
extension UIViewController {
    func makeNavImg(){
        let imgTitle = #imageLiteral(resourceName: "travel_maker_main")
        navigationItem.titleView = UIImageView(image: imgTitle)
    }
}


extension NSObject {
    static var reuseIdentifier: String { //스토리보드 idetifier
        return String(describing: self)
    }
}


//hex code로 Color 생성하기
extension UIColor {
    
    public convenience init?(_ hexString: String) {
        let r, g, b, a: CGFloat
        
        if hexString.hasPrefix("#") {
            let start = hexString.index(hexString.startIndex, offsetBy: 1)
            let hexColor = String(hexString[start...])
            
            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0
                
                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255
                    
                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }
        return nil
    }
}



extension FavoriteVC{
    
    func setCollectionViewDataSourceDelegate <D: UICollectionViewDelegate & UICollectionViewDataSource> (_ dataSourceDelegate: D, forRow row:Int){
        favoriteCollectionView.delegate = dataSourceDelegate
        favoriteCollectionView.dataSource = dataSourceDelegate
        
        favoriteCollectionView.reloadData()
    }
}
