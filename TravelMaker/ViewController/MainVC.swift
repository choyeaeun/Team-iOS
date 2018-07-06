//
//  MainViewController.swift
//  TravelMaker
//
//  Created by 이충신 on 2018. 7. 2..
//  Copyright © 2018년 GGOMMI. All rights reserved.
//

import UIKit
import Alamofire
import NaverThirdPartyLogin

class MainVC: UIViewController {

    //MARK: IBOutlet
    @IBOutlet weak var loginBtn: UIButton!
    
    
    //MARK: Properties
    let loginInstance = NaverThirdPartyLoginConnection.getSharedInstance()
    
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //MARK: IBAction
    // ----- 1 : Delegate를 지정 및 인증 요청. 네이버 앱이나 사파리를 통해 인증이 진행.
    @IBAction func  loginPressed(_ sender: Any) {
        loginInstance?.delegate = self;
        loginInstance?.requestThirdPartyLogin()
    }
    
}

extension MainVC: NaverThirdPartyLoginConnectionDelegate{
    
    
    // ---- 2: 네이버 앱이 없을 경우 사파리 인증
    func oauth20ConnectionDidOpenInAppBrowser(forOAuth request: URLRequest!) {
        let naverSignInViewController = NLoginThirdPartyOAuth20InAppBrowserViewController(request: request)!
        present(naverSignInViewController, animated: true, completion: nil)
    }
    
    
    // 발급 받은 토큰의 유효 기간은 1시간으로 isValidAccessTokenExpireTimeNow() 메소드를 통해
    //현재 갖고 있는 접근 토큰의 유효 기간이 만료되었는지를 판단할 수 있습니다.
    // ---- 3 : 접근 토큰을 성공적으로 받아왔을 때 호출되는 메소드
   
    func oauth20ConnectionDidFinishRequestACTokenWithAuthCode() {
        print("Success DidFinishRequestACTokenWith AuthCode")
        getNaverEmailFromURL()
        
        /////처음가입시 사용되는 메소드 -> 여행타입뷰로/////
        guard let joinVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "JoinVC") as? JoinVC else { return }
        
            self.present(joinVC, animated: true, completion: nil)


    }
    
    // ---- 4: 갱신 토큰을 성공적으로 받아왔을 때 호출되는 메소드
    func oauth20ConnectionDidFinishRequestACTokenWithRefreshToken() {
        print("Success DidFinishRequestACTokenWith RefreshToken")
        getNaverEmailFromURL()
        
        
        ////// 로그인 후 1시간동안 유효하기 때문에 ->바로 메인뷰/////
        guard let joinVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "JoinVC") as? JoinVC else { return }
        
        self.present(joinVC, animated: true, completion: nil)
        

        
    }
    
    
    // ---- 5:  연동이 성공적으로 해제되었을 때 호출되는 메소드입니다.
    func oauth20ConnectionDidFinishDeleteToken() {
        
    }
    
    
    // ---- 6:
    func oauth20Connection(_ oauthConnection: NaverThirdPartyLoginConnection!, didFailWithError error: Error!) {
        print(error.localizedDescription)
        print(error)
    }
    
    
    // ---- 7:
    func getNaverEmailFromURL(){
        
        guard let loginConn = NaverThirdPartyLoginConnection.getSharedInstance() else {return}
        guard let tokenType = loginConn.tokenType else {return}
        guard let accessToken = loginConn.accessToken else {return}
        
        let authorization = "\(tokenType) \(accessToken)"
        
        Alamofire.request("https://openapi.naver.com/v1/nid/me", method: .get, parameters: nil, encoding: JSONEncoding.default, headers: ["Authorization" : authorization]).responseJSON { (response) in
            
            guard let result = response.result.value as? [String: Any] else {return}
            //guard let object = result["response"] as? [String: Any] else {return}
            
            //guard let birthday = object["birthday"] as? String else {return} // "11-25"
            //guard let name = object["name"] as? String else {return} // "\Uc774\Ucda9\Uc2e0"
            //guard let age = object["age"] as? String else {return} // "20-29"
            //guard let gender = object["gender"] as? String else {return} // "M"
            
            //개인정보에 대한 JSON 정보가 날라옴
            print(result)
        }
    }
}
