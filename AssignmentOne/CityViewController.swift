//
//  CityViewController.swift
//  AssignmentOne
//
//  Created by Simon on 9/16/22.
//

import UIKit

class CityViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    lazy var imageModel = {
        return ImageModel.sharedInstance()
    }()
    
    var displayImageName = "DallasM"
    
    lazy private var imageView: UIImageView? = {
        return UIImageView.init(image: self.imageModel.getImageWithName(displayImageName))
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        if let size = self.imageView?.image?.size {
            self.scrollView.addSubview(self.imageView!)
            self.scrollView.contentSize = size
            self.scrollView.minimumZoomScale = 0.1
            self.scrollView.delegate = self
        }
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.imageView
    }
    
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        if displayImageName.hasSuffix("M") {
            displayImageName.removeLast(1)
            displayImageName += "N"
        } else {
            displayImageName.removeLast(1)
            displayImageName += "M"
        }
        self.imageView?.image = imageModel.getImageWithName(displayImageName)
    }
}
