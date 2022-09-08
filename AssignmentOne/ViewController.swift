//
//  ViewController.swift
//  AssignmentOne
//
//  Created by Muhammad Ashraf on 9/5/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //this is a comment
        
//        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
//          button.backgroundColor = .green
//          button.setTitle("Test Button", for: .normal)
//          button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
//          self.view.addSubview(button)
//
//     }
//        @objc func buttonAction(sender: UIButton!) {
//        print("Button tapped")
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            label.center = CGPoint(x: 160, y: 285)
            label.textAlignment = .center
            label.text = "I'm a test label"

            self.view.addSubview(label)
//    }
}

}
