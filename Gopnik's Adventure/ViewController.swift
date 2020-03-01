//
//  ViewController.swift
//  Gopnik's Adventure
//
//  Created by Test on 2/27/20.
//  Copyright © 2020 AlexTitovProductions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var botomWallImage: UIImageView!
    @IBOutlet var topWallImage: UIImageView!
    @IBOutlet var leftWallImage: UIImageView!
    @IBOutlet var rightWallImage: UIImageView!
    
    @IBOutlet var characterImage: UIImageView!
    
    var animator: UIDynamicAnimator?

    
    
    var rightVelocityMultiplier: Double = 0.0;
    var leftVelocityMultiplier: Double = 0.0;
    var upVelocityMultiplier: Double = 0.0;
    var downVelocityMultiplier: Double = 0.0;
    var rightVelocity: Double = 1.0;
    var leftVelocity: Double = 1.0;
    var upVelocity: Double = 1.0;
    var downVelocity: Double = 1.0;
    var characterLocationX: Double = 350.0;
    var characterLocationY: Double = 400.0;
    var upTouchesEnded: Bool = true;
    var downTouchesEnded: Bool = true;
    var leftTouchesEnded: Bool = true;
    var rightTouchesEnded: Bool = true;


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(moveCharacter), userInfo: nil, repeats: true)
        animator = UIDynamicAnimator(referenceView: self.view)
        
        let boundaries = UICollisionBehavior(items: [characterImage])
        
    }
    
    
    
    
    @objc func moveCharacter() {
        if rightVelocityMultiplier > 0 {
            rightVelocityMultiplier -= 0.1
        }
        if leftVelocityMultiplier > 0 {
            leftVelocityMultiplier -= 0.1
        }
        if upVelocityMultiplier > 0 {
            upVelocityMultiplier -= 0.1
        }
        if downVelocityMultiplier > 0 {
            downVelocityMultiplier -= 0.1
        }
        
        if upTouchesEnded == false {
            upVelocityMultiplier = 2
        }
        if downTouchesEnded == false {
            downVelocityMultiplier = 2
        }
        if leftTouchesEnded == false {
            leftVelocityMultiplier = 2
        }
        if rightTouchesEnded == false {
            rightVelocityMultiplier = 2
        }
        
        characterImage.center = CGPoint(x: characterLocationX + (rightVelocity * rightVelocityMultiplier) - (leftVelocity * leftVelocityMultiplier), y:characterLocationY + (downVelocity * downVelocityMultiplier) - (upVelocity * upVelocityMultiplier))
        
        characterLocationX = Double(characterImage.center.x)
        characterLocationY = Double(characterImage.center.y)
       
    }
    
    
    func getCorners(centerX: Int, centerY: Int, height: Int, width: Int) -> [[Int]] {
        return [[centerX + (width/2), centerY - (height/2)], [centerX + (width/2), centerY + (height/2)], [centerX - (width/2), centerY - (height/2)], [centerX - (width/2), centerY + (height/2)]]
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

