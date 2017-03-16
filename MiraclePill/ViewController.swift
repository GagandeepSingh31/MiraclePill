//
//  ViewController.swift
//  MiraclePill
//
//  Created by Gagandeep Singh on 3/16/17.
//  Copyright © 2017 Gagandeep Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var miraclePillmg: UIImageView!
    @IBOutlet weak var miraclePillLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var dividor: UIView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var successImg: UIImageView!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var zipCodeTxtField: UITextField!
    @IBOutlet weak var zipCodeLbl: UILabel!
    @IBOutlet weak var countryTxtField: UITextField!
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var stateLbl: UILabel!
    @IBOutlet weak var cityTxtFiled: UITextField!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var streetTxtFiled: UITextField!
    @IBOutlet weak var streetLbl: UILabel!
    @IBOutlet weak var nameTxtField: UITextField!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    let states = ["Rohini", "Rani Bagh", "Rajouri Garden", "Pritam Pura","Hari Nagar","Paschim Vihar"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.delegate = self
        statePicker.dataSource = self
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func stateBtnPressed(_ sender: Any) {
        
        statePicker.isHidden = false
        countryLbl.isHidden = true
        countryTxtField.isHidden = true
        zipCodeLbl.isHidden = true
        zipCodeTxtField.isHidden = true
        buyNowBtn.isHidden = true
        
        
    }
    
    
    @IBAction func buyNowBtnPressed(_ sender: Any) {
        miraclePillmg.isHidden = true
        miraclePillLbl.isHidden = true
        priceLbl.isHidden = true
        dividor.isHidden = true
        nameLbl.isHidden = true
        nameTxtField.isHidden = true
        streetLbl.isHidden = true
        streetTxtFiled.isHidden = true
        cityLbl.isHidden = true
        cityTxtFiled.isHidden = true
        stateLbl.isHidden = true
        statePickerBtn.isHidden = true
        statePicker.isHidden = true
        countryLbl.isHidden = true
        countryTxtField.isHidden = true
        zipCodeLbl.isHidden = true
        zipCodeTxtField.isHidden = true
        buyNowBtn.isHidden = true
        successImg.isHidden = false
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLbl.isHidden = false
        countryTxtField.isHidden = false
        zipCodeLbl.isHidden = false
        zipCodeTxtField.isHidden = false
        buyNowBtn.isHidden = false
        
    }
    
}

