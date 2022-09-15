//
//  ViewController.swift
//  AssignmentOne
//
//  Created by Muhammad Ashraf on 9/5/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var label: UILabel!
    

    @IBOutlet weak var
        myLabel: UILabel!
    
    @IBOutlet weak var
        cities: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let twoLineButton = TwoLinedButton(frame: CGRect(x: 0, y: 0, width: 220, height: 55))
//        view.addSubview(twoLineButton)
//        twoLineButton.center = view.center
//        twoLineButton.configure(with: TwoLinedButtonViewModel(
//            primaryText: "I am first",
//            secondaryText: "I am second"))
        self.myLabel.text = "Yay, a label!"
        

    }
//    @IBAction func sliderValueChanged(_sender: Any){
//        label.text = "hi"
//    }
}
        




        
        
//        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
//            label.center = CGPoint(x: 160, y: 285)
//            label.textAlignment = .center
//            label.text = "I'm a test label"
//
//            self.view.addSubview(label)

  //  }


