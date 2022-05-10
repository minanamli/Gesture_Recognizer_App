//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Mina Namlı on 16.02.2022.
//

import UIKit

class ViewController: UIViewController {

    var isVan = true
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }

    @objc func changePic() {

        if isVan == true {
            imageView.image = UIImage(named: "van")
            myLabel.text = "Van Gogh"
            isVan = false
        } else {
            imageView.image = UIImage(named: "paint")
            myLabel.text = "Van Gogh's paint"
            isVan = true
            
        }        
    }

}

