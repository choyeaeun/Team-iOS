//
//  WriteApplyViewController.swift
//  TravelMaker
//
//  Created by 조예은 on 2018. 7. 5..
//  Copyright © 2018년 GGOMMI. All rights reserved.
//

import UIKit

class WriteApplyVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var menuCount = 0
    
    @IBAction func dismissButton(_ sender: Any) {
    }
    
    @IBAction func registerBtn(_ sender: Any) {
    }
    
    @IBOutlet weak var inOutTableView: UITableView!
    
    let pickerview = UIPickerView()

    override func viewDidLoad() {
        super.viewDidLoad()

        menuCount = 1
        
        inOutTableView.delegate = self;
        inOutTableView.dataSource = self;
    }
    
    @objc func addTextField(){
        menuCount += 1
        //print("menucount= \(menuCount)") //2가 출력됨
        self.inOutTableView.beginUpdates()
        self.inOutTableView.insertRows(at: [IndexPath(row: menuCount-1, section: 0)], with : .bottom )
        self.inOutTableView.endUpdates()
        
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell = inOutTableView.dequeueReusableCell(withIdentifier: "WriteApplyTVCell1") as! WriteApplyTVCell1
            
            
            return cell
        }else {
            

            let cell = inOutTableView.dequeueReusableCell(withIdentifier: "WriteApplyTVCell2") as! WriteApplyTVCell2
            
            cell.addTextField.addTarget(self, action: #selector(addTextField), for: UIControlEvents.touchUpInside)
            
            return cell
        }
        
    }

}
//extension WriteApplyViewController: UIPickerViewDelegate, UIPickerViewDataSource {
//    // picker 구성.
//    func initPicker() {
//        pickerview.delegate = self; pickerview.dataSource = self
//
//        let bar = UIToolbar()
//        bar.sizeToFit()
//
//        let doneButton = UIBarButtonItem(title: "확인", style: .done, target: self, action: #selector(selectedPicker))
//
//        bar.setItems([doneButton], animated: true)
//        pickerTextField.inputAccessoryView = bar
//        pickerTextField.inputView = pickerview
//    }
//
//    // picker에서 완료 버튼을 눌렀을 때 실행되는 function.
//    // #selector(function)에 들어갈 function은 @objc 어노테이션이 필요합니다.
//    @objc func selectedPicker() {
//        let row = pickerview.selectedRow(inComponent: 0)
//
//        // 선택된 항목 textField에 넣기.
//        pickerTextField.text = colorArray[row]
//        changedTextField(pickerTextField)
//
//        view.endEditing(true)
//    }
//
//    // Component : 피커의 열.
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 1
//    }
//
//    // Row in component : Component 안의 행.
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return colorArray.count
//    }
//
//    // title : 피커에 넣고 싶은 내용.
//    // titleForRow : 외부매개변수명, row : 내부매개변수명.
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return colorArray[row]
//    }
//
//
//}
