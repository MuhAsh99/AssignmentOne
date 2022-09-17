//
//  ViewController.swift
//  AssignmentOne
//
//  Created by Muhammad Ashraf on 9/16/22.
//
//
import UIKit

class StartPage: UIViewController {
    
    @IBOutlet var mySwitch: UISwitch!
    
    @IBAction func switchDidChange(_ sender: UISwitch){
        if sender.isOn{
            view.backgroundColor = .red
        }else{
            view.backgroundColor = .blue
        }
    }

    @IBOutlet weak var lb2: UILabel!
    
    @IBAction func stpr(_ sender: UIStepper) {
        lb2.text = String(sender.value)
    }
    
    @IBOutlet weak var lb: UILabel!
    @IBOutlet weak var CitiesPickerDisplay: UITextField!
   
    @IBAction func myButton(_ sender: Any) {
        
        print("button was pressed!")
        
        lb.text = "Mini Game: Click the stepper!"
    }

    let cities = ["Dallas","NYC","LA","London","Tokyo"]
    
    var pickerView = UIPickerView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        pickerView.delegate = self
        pickerView.dataSource = self

        CitiesPickerDisplay.inputView = pickerView
        CitiesPickerDisplay.textAlignment = .center
        
       
    
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





