//
//  HomeDetailViewController.swift
//  TravelMaker
//
//  Created by 이충신 on 2018. 7. 5..
//  Copyright © 2018년 GGOMMI. All rights reserved.
//

import UIKit

class HomeDetailVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var countryImage: UIImageView!
    @IBOutlet weak var applyTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.applyTableView.dataSource = self;
        self.applyTableView.delegate = self;
        
        //국가별로 이미지를 받아와 countryImage 변수에 할당해야함
        countryImage.image = #imageLiteral(resourceName: "china_img")
    }
 
    
    // 하단의 신청해요 테이블은 항상 5개를 유지한다.
    // 더보기 버튼을 통해 MoreApply로 이동
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (section == 0 || section == 2) {
            return 1
        }else{
            return 5
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeDetailTVCell1") as! HomeDetailTVCell1
            return cell
        }else if indexPath.section == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeDetailTVCell2") as! HomeDetailTVCell2
            cell.numLabel.text = "1"
            cell.titleLabel.text = "중국/베이징/날짜/성향"
            cell.commentLabel.text = "0"
            return cell
        }else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeDetailTVCell3") as! HomeDetailTVCell3
            return cell
        }
       
        
        //여기서 신청하는 데이터마다 할당
        
        
    }
    
    
    //전문가 더보기 버튼 클릭 -> 화면전환
    @IBAction func expertMorePressed(_ sender: Any) {
    
        guard let moreExpertVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MoreExpertVC") as? MoreExpertVC else
        { return }
    
        self.navigationController?.pushViewController(moreExpertVC, animated: true)

        
    }

     //신청서 더보기 버튼 클릭 -> 화면전환
    @IBAction func applyMorePressed(_ sender: Any) {
        
        guard let moreApplyVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MoreApplyVC") as? MoreApplyVC else { return }
        
        self.navigationController?.pushViewController(moreApplyVC, animated: true)
        
    }
    
    
}
