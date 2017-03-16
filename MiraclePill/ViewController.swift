//
//  ViewController.swift
//  MiraclePill
//
//  Created by Gagandeep Singh on 3/16/17.
//  Copyright © 2017 Gagandeep Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

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
    }
    
}

