//
//  ViewController.swift
//  Gopnik's Adventure
//
//  Created by Test on 2/27/20.
//  Copyright © 2020 AlexTitovProductions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var bottomWallImage: UIImageView!
    @IBOutlet var topWallImage: UIImageView!
    @IBOutlet var leftWallImage: UIImageView!
    @IBOutlet var rightWallImage: UIImageView!
    @IBOutlet var I1TopImage: UIImageView!
    @IBOutlet var I1BottomImage: UIImageView!
    @IBOutlet var I1LeftImage: UIImageView!
    
    
    
    
    
    @IBOutlet var characterImage: UIImageView!
    
    var animator: UIDynamicAnimator?

    
    
    var rightVelocityMultiplier: Double = 0.0;
    var leftVelocityMultiplier: Double = 0.0;
    var upVelocityMultiplier: Double = 0.0;
    var downVelocityMultiplier: Double = 0.0;
    var rightVelocity: Double = 0.1;
    var leftVelocity: Double = 0.1;
    var upVelocity: Double = 0.1;
    var downVelocity: Double = 0.1;
    var characterLocationX: Double = 40.0;
    var characterLocationY: Double = 663.0;
    var upTouchesEnded: Bool = true;
    var downTouchesEnded: Bool = true;
    var leftTouchesEnded: Bool = true;
    var rightTouchesEnded: Bool = true;


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let timer = Timer.scheduledTimer(timeInterval: 0.001, target: self, selector: #selector(moveCharacter), userInfo: nil, repeats: true)
    }
    
    
    
    
    @objc func moveCharacter() {
        if rightVelocityMultiplier > 0 {
            rightVelocityMultiplier -= 0.1
        }
        if leftVelocityMultiplier > 0 {
            leftVelocityMultiplier -= 0.1
        }
        if upVelocityMultiplier > 0 {
            upVelocityMultiplier -= 0.01
        }
        if upVelocityMultiplier < 0 {
            upVelocityMultiplier = 0
        }
        
        if upTouchesEnded == false {
            upVelocityMultiplier = 3
            downVelocityMultiplier = 0
        }
        if leftTouchesEnded == false {
            leftVelocityMultiplier = 2
        }
        if rightTouchesEnded == false {
            rightVelocityMultiplier = 2
        }
        
        if characterImage.frame.intersects(leftWallImage.frame) {
            leftVelocityMultiplier = 0
        }
        if (characterImage.frame.intersects(rightWallImage.frame) || characterImage.frame.intersects(I1LeftImage.frame)) {
            rightVelocityMultiplier = 0
        }
        if (characterImage.frame.intersects(topWallImage.frame) || characterImage.frame.intersects(I1BottomImage.frame)) {
            upVelocityMultiplier = 0
        }
        if (characterImage.frame.intersects(bottomWallImage.frame) || characterImage.frame.intersects(I1TopImage.frame)) {
            downVelocityMultiplier = 0
        } else {
            downVelocityMultiplier += 0.01
        }
        
        
        characterImage.center = CGPoint(x: characterLocationX + (rightVelocity * rightVelocityMultiplier) - (leftVelocity * leftVelocityMultiplier), y:characterLocationY + (downVelocity * downVelocityMultiplier) - (upVelocity * upVelocityMultiplier))
        
        characterLocationX = Double(characterImage.center.x)
        characterLocationY = Double(characterImage.center.y)
       
    }
    

    
    
    
    
    
    
    
    
    
    @IBAction func upLongPress(_ sender: UILongPressGestureRecognizer) {
        if sender.state != .ended {
            upTouchesEnded = false
        } else {
            upTouchesEnded = true
        }
    }
    
    @IBAction func rightLongPress(_ sender: UILongPressGestureRecognizer) {
        if sender.state != .ended {
            rightTouchesEnded = false
        } else {
            rightTouchesEnded = true
        }
    }
    
    @IBAction func downLongPress(_ sender: UILongPressGestureRecognizer) {
        if sender.state != .ended {
            downTouchesEnded = false
        } else {
            downTouchesEnded = true
        }
    }
    
    
    @IBAction func leftLongPress(_ sender: UILongPressGestureRecognizer) {
        if sender.state != .ended {
            leftTouchesEnded = false
        } else {
            leftTouchesEnded = true
        }
    }
    

    
    
    
    
}

