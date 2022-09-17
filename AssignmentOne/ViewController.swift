//
//  ViewController.swift
//  AssignmentOne
//
//  Created by Muhammad Ashraf on 9/16/22.
//

import UIKit

class StartPage: UIViewController {

    
    
    @IBOutlet weak var CitiesPickerDisplay: UITextField!
    @IBOutlet weak var buttony: UILabel!
    @IBAction func myButton(_ sender: Any) {
        
        buttony.text = "Mini Game: Click as many times as you can!"
    }

    let cities = ["Dallas","NYC","LA","London","Tokyo"]
    
    var pickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        pickerView.delegate = self
        pickerView.dataSource = self

        CitiesPickerDisplay.inputView = pickerView
        CitiesPickerDisplay.textAlignment = .center
        
        // Do any additional setup after loading the view.
    }

}

extension StartPage:UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cities.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cities[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        CitiesPickerDisplay.text = cities[row]
        CitiesPickerDisplay.resignFirstResponder()
    }
}
