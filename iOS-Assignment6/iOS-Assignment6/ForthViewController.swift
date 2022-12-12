//
//  ForthViewController.swift
//  iOS-Assignment6
//
//  Created by Yusuf Khan on 2022-12-12.
//

import UIKit

class ForthViewController: UIViewController {
    
    private let myView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .systemPurple
        return myView
    }()
    
    private let size: CGFloat = 200
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myView)
        myView.frame = CGRect(x:0, y:0, width: size, height: size)
        myView.center = view.center

        // Do any additional setup after loading the view.
    }
    
    @IBAction func pinchGesture(_ sender: UIPinchGestureRecognizer) {
        if(sender.state == .changed){
            let scale = sender.scale
            myView.frame = CGRect(x: 0, y: 0, width: size * scale, height: size * scale)
            myView.center = view.center
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
