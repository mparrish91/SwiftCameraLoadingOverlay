//
//  ViewController.swift
//  logoTesting
//
//  Created by parry on 2/9/17.
//  Copyright © 2017 parry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var camera: Camera!
    @IBOutlet weak var cameraLens: CameraLens!
    
    @IBOutlet weak var spinning: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        animateCamera()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func animateCamera() {
//        UIView.animate(withDuration: 1.5, delay: 0, options: .curveLinear, animations: {
//            self.cameraLens!.transform =
//                self.cameraLens!.transform.rotated(by: CGFloat(M_PI_2))
//            
//            self.spinning!.transform =
//                self.spinning!.transform.rotated(by: CGFloat(M_PI_2))
//            self.cameraLens.startRotating()
//            self.spinning.startRotating()
//            
//        }, completion: { finished in
//            self.animateCamera()
//        })
        self.cameraLens.startRotating()

    }

}


extension UIView {
    func startRotating(duration: Double = 1) {
        let kAnimationKey = "rotation"
        
        if self.layer.animation(forKey: kAnimationKey) == nil {
            let animate = CABasicAnimation(keyPath: "transform.rotation")
            animate.duration = duration
            animate.repeatCount = Float.infinity
            animate.fromValue = 0.0
            animate.toValue = Float(M_PI * 2.0)
            self.layer.add(animate, forKey: kAnimationKey)
        }
    }
}
