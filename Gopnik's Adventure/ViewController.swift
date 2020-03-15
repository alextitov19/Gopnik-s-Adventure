//
//  ViewController.swift
//  Gopnik's Adventure
//
//  Created by Test on 2/27/20.
//  Copyright © 2020 AlexTitovProductions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //borders
    @IBOutlet var bottomWallImage: UIImageView!
    @IBOutlet var topWallImage: UIImageView!
    @IBOutlet var leftWallImage: UIImageView!
    @IBOutlet var rightWallImage: UIImageView!
    //I1
    @IBOutlet var I1TopImage: UIImageView!
    @IBOutlet var I1BottomImage: UIImageView!
    @IBOutlet var I1LeftImage: UIImageView!
    //I2
    @IBOutlet var I2TopImage: UIImageView!
    @IBOutlet var I2RightImage: UIImageView!
    @IBOutlet var I2BottomImage: UIImageView!
    //I3
    @IBOutlet var I3TopImage: UIImageView!
    @IBOutlet var I3LeftImage: UIImageView!
    @IBOutlet var I3BottomImage: UIImageView!
    //I4
    @IBOutlet var I4LeftImage: UIImageView!
    @IBOutlet var I4TopImage: UIImageView!
    @IBOutlet var I4BottomImage: UIImageView!
    //I5
    @IBOutlet var I5TopImage: UIImageView!
    @IBOutlet var I5RightImage: UIImageView!
    @IBOutlet var I5BottomImage: UIImageView!
    //I6
    @IBOutlet var I6TopImage: UIImageView!
    @IBOutlet var I6LeftImage: UIImageView!
    @IBOutlet var I6BottomImage: UIImageView!
    //I7
    @IBOutlet var I7TopImage: UIImageView!
    @IBOutlet var I7RightImage: UIImageView!
    @IBOutlet var I7BottomImage: UIImageView!
    //I8
    @IBOutlet var I8TopImage: UIImageView!
    @IBOutlet var I8RightImage: UIImageView!
    @IBOutlet var I8BottomImage: UIImageView!
    //I9
    @IBOutlet var I9TopImage: UIImageView!
    @IBOutlet var I9LeftImage: UIImageView!
    @IBOutlet var I9BottomImage: UIImageView!
    //I10
    @IBOutlet var I10LeftImage: UIImageView!
    @IBOutlet var I10TopImage: UIImageView!
    @IBOutlet var I10BottomImage: UIView!
    //I11
    @IBOutlet var I11TopImage: UIImageView!
    @IBOutlet var I11RightImage: UIImageView!
    @IBOutlet var I11BottomImage: UIImageView!
    //I12
    @IBOutlet var I12TopImage: UIImageView!
    @IBOutlet var I12LeftImage: UIImageView!
    @IBOutlet var I12BottomImage: UIImageView!
    //I13
    @IBOutlet var I13TopImage: UIImageView!
    @IBOutlet var I13RightImage: UIImageView!
    @IBOutlet var I13BottomImage: UIImageView!
    //I14
    @IBOutlet var I14TopImage: UIImageView!
    @IBOutlet var I14RightImage: UIImageView!
    @IBOutlet var I14BottomImage: UIImageView!
    //I15
    @IBOutlet var I15TopImage: UIImageView!
    @IBOutlet var I15LeftImage: UIImageView!
    @IBOutlet var I15BottomImage: UIImageView!
    //I16
    @IBOutlet var I16TopImage: UIImageView!
    @IBOutlet var I16LeftImage: UIImageView!
    @IBOutlet var I16BottomImage: UIImageView!
    
    
    
    
    
    
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
        //left border hit
        if (characterImage.frame.intersects(leftWallImage.frame) || characterImage.frame.intersects(I2RightImage.frame)){
            leftVelocityMultiplier = 0
        }
        //right border hit
        if (characterImage.frame.intersects(rightWallImage.frame) || characterImage.frame.intersects(I1LeftImage.frame) || characterImage.frame.intersects(I3LeftImage.frame)) {
            rightVelocityMultiplier = 0
        }
        //bottom border hit
        if (characterImage.frame.intersects(topWallImage.frame) || characterImage.frame.intersects(I1BottomImage.frame) || characterImage.frame.intersects(I2BottomImage.frame) || characterImage.frame.intersects(I3BottomImage.frame)) {
            upVelocityMultiplier = 0
        }
        //top border hit
        if (characterImage.frame.intersects(bottomWallImage.frame) || characterImage.frame.intersects(I1TopImage.frame) || characterImage.frame.intersects(I2TopImage.frame) || characterImage.frame.intersects(I3TopImage.frame)) {
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

