//
//  ViewController.swift
//  iOS-Assignment6
//
//  Created by Yusuf Khan on 2022-12-07.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func didTapView(_ sender: UITapGestureRecognizer) {
        
        if sender.numberOfTapsRequired == 1 {
            print("Single Tap")
        }
        else if(sender.numberOfTapsRequired == 2){
            print("Double Tap")
            self.performSegue(withIdentifier: "showSecond", sender: self)
        }
        
    }
    
    @IBOutlet var myView: UIView!{
        didSet{
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(didTapView(_:)))
        
        // Configure Tap Gesture Recognizer
        tapGestureRecognizer.numberOfTapsRequired = 2

           // Add Tap Gesture Recognizer
        myView.addGestureRecognizer(tapGestureRecognizer)

    }
}

