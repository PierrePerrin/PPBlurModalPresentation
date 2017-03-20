//
//  BlurModalPresentation.swift
//  PPBlurModalPresentation
//
//  Created by Pierre Perrin on 20/03/2017.
//  Copyright © 2017 Pierre Perrin. All rights reserved.
//


import UIKit

class BlurModalPresentation: NSObject,UIViewControllerAnimatedTransitioning {
    
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval{
        
        return 0.5
    }
    
    var blurView = UIVisualEffectView(effect: UIBlurEffect(style: UIBlurEffectStyle.light))
    var destinationView : UIView!
    var animator: UIViewPropertyAnimator?
    
    // This method can only  be a nop if the transition is interactive and not a percentDriven interactive transition.
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning){
        
        let containerView = transitionContext.containerView
        
        _ = transitionContext.viewController(forKey: UITransitionContextViewControllerKey.from)
        let toVc = transitionContext.viewController(forKey: UITransitionContextViewControllerKey.to)
        
        destinationView = toVc!.view
        destinationView.alpha = 0.0
        
        blurView.effect = nil
        blurView.frame = containerView.bounds
        
        self.blurTransition(transitionContext) { 
            
            self.unBlur(transitionContext, completion: { 
                
                self.blurView.removeFromSuperview()
                transitionContext.completeTransition(true)
            })
        }
        
        containerView.addSubview(toVc!.view)
        containerView.addSubview(blurView)
    }
    
    
    func blurTransition(_ context : UIViewControllerContextTransitioning,completion: @escaping () -> Void){
        
        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: self.transitionDuration(using: context)/2, delay: 0, options: UIViewAnimationOptions.curveLinear, animations: {
            
            self.destinationView.alpha = 0.5
              self.blurView.effect = UIBlurEffect(style: UIBlurEffectStyle.light)
        }, completion: { (position) in
            completion()
        })
        
    }
    
    func unBlur(_ context : UIViewControllerContextTransitioning,completion: @escaping () -> Void){
        
        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: self.transitionDuration(using: context) / 2, delay:0, options: UIViewAnimationOptions.curveLinear, animations: {
            
            self.destinationView.alpha = 1.0
            self.blurView.effect = nil
        }, completion: { (position) in
            completion()
        })
    }
    
  
    
    
}
