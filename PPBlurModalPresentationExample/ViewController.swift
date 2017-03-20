//
//  ViewController.swift
//  PPBlurModalPresentation
//
//  Created by Pierre Perrin on 20/03/2017.
//  Copyright © 2017 Pierre Perrin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIViewControllerTransitioningDelegate {

    let blurModalPresentation = BlurModalPresentation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func showVC(){
        
        let str = self.storyboard!
        let vc = str.instantiateViewController(withIdentifier: "YourViewControllerIdentifier")
        vc.transitioningDelegate = self
        self.present(vc, animated: true, completion: nil)
    }


    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning?{
        
        return blurModalPresentation
    }
    
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning?{
        
        return blurModalPresentation
    }

}
