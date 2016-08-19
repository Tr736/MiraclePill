//
//  ViewController.swift
//  MiraclePill
//
//  Created by Thomas Richardson on 8/18/16.
//  Copyright © 2016 Thomas Richardson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var buyNowButton: UIButton!
    @IBOutlet weak var zipTextField: UITextField!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var stateButton: UIButton!
    @IBOutlet var statePicker: UIPickerView!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dividerBar: UIView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var pillImage: UIImageView!
    @IBOutlet weak var successImage: UIImageView!
    let states = ["Alabama","Alaska","Arizona","Arkansas","California","Colorado","Connecticut","Delaware","Florida","Georgia","Hawaii","Idaho","Illinois Indiana","Iowa","Kansas","Kentucky","Louisiana","Maine","Maryland","Massachusetts","Michigan","Minnesota","Mississippi","Missouri","Montana Nebraska","Nevada","New Hampshire","New Jersey","New Mexico","New York","North Carolina","North Dakota","Ohio","Oklahoma","Oregon","Pennsylvania Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Utah","Vermont","Virginia","Washington","West Virginia","Wisconsin","Wyoming"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func stateButtonPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        zipLabel.isHidden = true
        zipTextField.isHidden = true
        buyNowButton.isHidden = true

    }
    
    @IBAction func buyButtonPressed(_ sender: AnyObject) {
        
        statePicker.isHidden = true
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        zipLabel.isHidden = true
        zipTextField.isHidden = true
        buyNowButton.isHidden = true
        stateButton.isHidden = true
        stateLabel.isHidden = true
        cityTextField.isHidden = true
        cityLabel.isHidden = true
        addressTextField.isHidden = true
        addressLabel.isHidden = true
        nameLabel.isHidden = true
        nameTextField.isHidden = true
        dividerBar.isHidden = true
        priceLabel.isHidden = true
        titleLabel.isHidden = true
        pillImage.isHidden = true
        successImage.isHidden = !successImage.isHidden


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
        stateButton.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryTextField.isHidden = false
        zipLabel.isHidden = false
        zipTextField.isHidden = false
        buyNowButton.isHidden = false
    }
}

