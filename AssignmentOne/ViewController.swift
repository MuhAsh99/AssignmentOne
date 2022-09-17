//
//  ViewController.swift
//  AssignmentOne
//
//  Created by Muhammad Ashraf on 9/16/22.
//

import UIKit

class StartPage: UIViewController {

    
    
    @IBOutlet weak var label: UILabel!
    @IBAction func myButton(_ sender: Any) {
        
        print("button was pressed!")
        
        label.text = "Mini Game: Click as many times as you can!"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
