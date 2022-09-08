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
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func sliderValueChanged(_sender: Any){
        label.text = "fuck"
    }
}
        
        //PREVIOUS CODE FOR A LABEL


        // Do any additional setup after loading the view.
        //this is a comment
        
        
//        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
//            label.center = CGPoint(x: 160, y: 285)
//            label.textAlignment = .center
//            label.text = "I'm a test label"
//
//            self.view.addSubview(label)
//    }



