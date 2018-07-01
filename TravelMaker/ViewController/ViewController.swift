//
//  ViewController.swift
//  TravelMaker
//
//  Created by 이충신 on 2018. 7. 1..
//  Copyright © 2018년 GGOMMI. All rights reserved.
//


import UIKit
import Alamofire
import NaverThirdPartyLogin

class ViewController: UIViewController {
    //MARK: IBOutlet
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var logoutBtn: UIButton! {
        didSet{
            logoutBtn.isHidden = true
        }
    }
    
    @IBOutlet weak var emailLabel: UILabel! {
        didSet{
            emailLabel.text = nil
        }
    }
    @IBOutlet weak var nameLabel: UILabel! {
        didSet{
            nameLabel.text = nil
        }
    }
    @IBOutlet weak var birthLabel: UILabel! {
        didSet{
            birthLabel.text = nil
        }
    }
    
    
    //MARK: Properties
    let loginInstance = NaverThirdPartyLoginConnection.getSharedInstance()
    
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //MARK: IBAction
    
    // ----- 1 :delegate를 지정 및 인증 요청. 네이버 앱이나 사파리를 통해 인증이 진행됩니다.
    @IBAction func handleLogin(_ sender: Any) {
        loginInstance?.delegate = self
        loginInstance?.requestThirdPartyLogin()
    }

    @IBAction func handleLogout(_ sender: Any) { // ----- 2
        //loginConn?.resetToken() // 로그아웃
        loginInstance?.requestDeleteToken() // 연동해제
        logoutBtn.isHidden = true
        loginBtn.isHidden = false
    }
}

extension ViewController: NaverThirdPartyLoginConnectionDelegate{
    
    
    // ---- 3 네이버 앱이 설치되어 있지 않다면 사파리를 통해 인증 진행 화면을 띄우는 코드입니다
    func oauth20ConnectionDidOpenInAppBrowser(forOAuth request: URLRequest!) {
        let naverSignInViewController = NLoginThirdPartyOAuth20InAppBrowserViewController(request: request)!
        present(naverSignInViewController, animated: true, completion: nil)
    }
    // ---- 4
    func oauth20ConnectionDidFinishRequestACTokenWithAuthCode() {
        print("Success oauth20ConnectionDidFinishRequestACTokenWithAuthCode")
        getNaverEmailFromURL()
        logoutBtn.isHidden = false
        loginBtn.isHidden = true
    }
    // ---- 5
    func oauth20ConnectionDidFinishRequestACTokenWithRefreshToken() {
        print("Success oauth20ConnectionDidFinishRequestACTokenWithRefreshToken")
        getNaverEmailFromURL()
        logoutBtn.isHidden = false
        loginBtn.isHidden = true
    }
    
    
    // ---- 6  연동이 성공적을 해제되었을 때 호출되는 메소드입니다.
    func oauth20ConnectionDidFinishDeleteToken() {
        
    }
    
    
    // ---- 7
    func oauth20Connection(_ oauthConnection: NaverThirdPartyLoginConnection!, didFailWithError error: Error!) {
        print(error.localizedDescription)
        print(error)
    }
    
    
    // ---- 8
    func getNaverEmailFromURL(){
        
        guard let loginConn = NaverThirdPartyLoginConnection.getSharedInstance() else {return}
        guard let tokenType = loginConn.tokenType else {return}
        guard let accessToken = loginConn.accessToken else {return}
        
        let authorization = "\(tokenType) \(accessToken)"
        Alamofire.request("https://openapi.naver.com/v1/nid/me", method: .get, parameters: nil, encoding: JSONEncoding.default, headers: ["Authorization" : authorization]).responseJSON { (response) in
            guard let result = response.result.value as? [String: Any] else {return}
            guard let object = result["response"] as? [String: Any] else {return}
            guard let birthday = object["birthday"] as? String else {return}
            guard let name = object["name"] as? String else {return}
            guard let email = object["email"] as? String else {return}
            
            self.birthLabel.text = birthday
            self.emailLabel.text = email
            self.nameLabel.text = name
            print(result)
        }
    }
}

