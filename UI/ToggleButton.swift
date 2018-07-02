//
//  ToggleButton.swift
//  TravelMaker
//
//  Created by 이충신 on 2018. 7. 2..
//  Copyright © 2018년 GGOMMI. All rights reserved.
//

import Foundation
import UIKit

//Twitter Blue Color
struct Colors {
    //static let twitterBlue = UIColor(red: 29.0/255.0, green: 161.0/255.0, blue: 242.0/255.0, alpha: 1.0)
    
    static let labelColor = UIColor("#00A8FF")  //레이블 파랑
    
    static let initTitle = UIColor("#8C8C8C")   //흑색
    static let initbg = UIColor("#F5F5F5")      //회색
    
    static let changebg = UIColor("##009FF1")   // 배경 푸른색
    
    static let bordercolor = UIColor("#BABABA") //검정
}

class ToggleButton: UIButton {
    
    var isOn = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initButton()
    }
    
    func initButton() {
        
        //테두리 굵기 및 색상, 원형
        layer.borderWidth = 0.3
        layer.borderColor = Colors.bordercolor?.cgColor
        layer.cornerRadius = frame.size.height/2
        
        //타이틀 색상
        setTitleColor(Colors.initTitle, for: .normal)
        addTarget(self, action: #selector(ToggleButton.buttonPressed), for: .touchUpInside)
        
    }
    
    @objc func buttonPressed() {
        activateButton(bool: !isOn)
    }
    
    func activateButton(bool: Bool) {
        
        isOn = bool
        
        //버튼의 백그라운드 색상
        let bgcolor = bool ?  Colors.changebg : Colors.initbg
        let titleColor = bool ?  .white : UIColor("#009FF1")
        
        setTitleColor(titleColor, for: .normal)
        backgroundColor = bgcolor
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
