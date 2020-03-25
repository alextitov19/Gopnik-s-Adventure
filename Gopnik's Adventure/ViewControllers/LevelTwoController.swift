//
//  LevelTwoController.swift
//  Gopnik's Adventure
//
//  Created by Test on 3/24/20.
//  Copyright © 2020 AlexTitovProductions. All rights reserved.
//

import UIKit

class LevelTwoController: UIViewController {
    
    //borders
    @IBOutlet var topWallImage: UIImageView!
    @IBOutlet var rightWallImage: UIImageView!
    @IBOutlet var bottomWallImage: UIImageView!
    @IBOutlet var leftWallImage: UIImageView!
    //character
    @IBOutlet var characterImage: UIImageView!
    //bullets
    @IBOutlet var bullet1Image: UIImageView!
    //I1
    @IBOutlet var I1TopImage: UIImageView!
    @IBOutlet var I1LeftImage: UIImageView!
    @IBOutlet var I1BottomImage: UIImageView!
    //I2
    @IBOutlet var I2TopImage: UIImageView!
    @IBOutlet var I2RightImage: UIImageView!
    @IBOutlet var I2BottomImage: UIImageView!
    //I3
    @IBOutlet var I3TopImage: UIImageView!
    @IBOutlet var I3LeftImage: UIImageView!
    @IBOutlet var I3BottomImage: UIImageView!
    //I4
    @IBOutlet var I4TopImage: UIImageView!
    @IBOutlet var I4RightImage: UIImageView!
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
    @IBOutlet var I8LeftImage: UIImageView!
    @IBOutlet var I8BottomImage: UIImageView!
    //I9
    @IBOutlet var I9TopImage: UIImageView!
    @IBOutlet var I9RightImage: UIImageView!
    @IBOutlet var I9BottomImage: UIImageView!
    //I10
    @IBOutlet var I10TopImage: UIImageView!
    @IBOutlet var I10RightImage: UIImageView!
    @IBOutlet var I10BottomImage: UIImageView!
    //I11
    @IBOutlet var I11TopImage: UIImageView!
    @IBOutlet var I11LeftImage: UIImageView!
    @IBOutlet var I11BottomImage: UIImageView!
    //I12
    @IBOutlet var I12TopImage: UIImageView!
    @IBOutlet var I12RightImage: UIImageView!
    @IBOutlet var I12BottomImage: UIImageView!
    
    
    
    //character movement attributes
    var rightVelocityMultiplier: Double = 0.0
    var leftVelocityMultiplier: Double = 0.0
    var upVelocityMultiplier: Double = 0.0
    var downVelocityMultiplier: Double = 0.0
    var rightVelocity: Double = 0.1
    var leftVelocity: Double = 0.1
    var upVelocity: Double = 0.1
    var downVelocity: Double = 0.1
    var characterLocationX: Double = 40.0
    var characterLocationY: Double = 663.0
    var downTouchesEnded: Bool = true
    var leftTouchesEnded: Bool = true
    var rightTouchesEnded: Bool = true
    //bullet attributes
    var bulletVelocity: Double = 0.5
    var bullet1IsInAction: Bool = false
    var bullet1Direction: Int = 1    //left = -1, right = 1
    var bullet1Y: Double = 600
    var bullet1X: Double = 300
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let timer = Timer.scheduledTimer(timeInterval: 0.001, target: self, selector: #selector(selector), userInfo: nil, repeats: true)
    }
    
    @objc func selector() {
        //character logic
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

        if leftTouchesEnded == false {
            leftVelocityMultiplier = 2
        }
        if rightTouchesEnded == false {
            rightVelocityMultiplier = 2
        }
               
        //right border hit
        func rightBorderHitCheck(frame :CGRect) -> Bool {
            if (frame.intersects(rightWallImage.frame) || frame.intersects(I1LeftImage.frame) || frame.intersects(I3LeftImage.frame) || frame.intersects(I6LeftImage.frame) || frame.intersects(I8LeftImage.frame) || frame.intersects(I11LeftImage.frame)) {
                return true
            } else {
                return false
            }
        }
        //left border hit
        func leftBorderHitCheck(frame :CGRect) -> Bool {
            if (frame.intersects(leftWallImage.frame) || frame.intersects(I2RightImage.frame) || frame.intersects(I4RightImage.frame) || frame.intersects(I5RightImage.frame) || frame.intersects(I7RightImage.frame) || frame.intersects(I9RightImage.frame) || frame.intersects(I10RightImage.frame) || frame.intersects(I12RightImage.frame)) {
                return true
            } else {
                return false
            }
        }
        //top border hit
        func topBorderHitCheck(frame :CGRect) -> Bool {
            if (frame.intersects(bottomWallImage.frame) || frame.intersects(I1TopImage.frame) || frame.intersects(I2TopImage.frame) || frame.intersects(I3TopImage.frame) || frame.intersects(I4TopImage.frame) || frame.intersects(I5TopImage.frame) || frame.intersects(I6TopImage.frame) || frame.intersects(I7TopImage.frame) || frame.intersects(I8TopImage.frame) || frame.intersects(I9TopImage.frame) || frame.intersects(I10TopImage.frame) || frame.intersects(I11TopImage.frame) || frame.intersects(I12TopImage.frame)) {
                return true
            } else {
                return false
            }
        }
        //bottom border hit
        func bottomBorderHitCheck(frame :CGRect) -> Bool {
            if (frame.intersects(topWallImage.frame) || frame.intersects(I1BottomImage.frame) || frame.intersects(I2BottomImage.frame) || frame.intersects(I3BottomImage.frame) || frame.intersects(I4BottomImage.frame) || frame.intersects(I5BottomImage.frame) || frame.intersects(I6BottomImage.frame) || frame.intersects(I7BottomImage.frame) || frame.intersects(I8BottomImage.frame) || frame.intersects(I9BottomImage.frame) || frame.intersects(I10BottomImage.frame) || frame.intersects(I11BottomImage.frame) || frame.intersects(I12BottomImage.frame)) {
                return true
            } else {
                return false
            }
        }
        
        if leftBorderHitCheck(frame: characterImage.frame){
            leftVelocityMultiplier = 0
        }
        if rightBorderHitCheck(frame: characterImage.frame) {
            rightVelocityMultiplier = 0
        }
        if bottomBorderHitCheck(frame: characterImage.frame) {
            upVelocityMultiplier = 0
        }
        if topBorderHitCheck(frame: characterImage.frame) {
            downVelocityMultiplier = 0
        } else {
            downVelocityMultiplier += 0.01
        }
        
       
        
        
        characterImage.center = CGPoint(x: characterLocationX + (rightVelocity * rightVelocityMultiplier) - (leftVelocity * leftVelocityMultiplier), y:characterLocationY + (downVelocity * downVelocityMultiplier) - (upVelocity * upVelocityMultiplier))
               
        characterLocationX = Double(characterImage.center.x)
        characterLocationY = Double(characterImage.center.y)
        
        if leftBorderHitCheck(frame: bullet1Image.frame) == true || rightBorderHitCheck(frame: bullet1Image.frame) == true{
                   bullet1IsInAction = false
        }
        
        if bullet1IsInAction == true {
                   bullet1Image.isHidden = false
                   bullet1Image.center = CGPoint(x: bullet1X + (bulletVelocity * Double(bullet1Direction)), y: bullet1Y)
                   bullet1X = Double(bullet1Image.center.x)
                   bullet1Y = Double(bullet1Image.center.y)
               } else {
                   bullet1Image.isHidden = true
               }
    }
    
    
    
    
    
    
    
    
    @IBAction func upButtonTapped(_ sender: UIButton) {
           upVelocityMultiplier = 5
       }
       
       @IBAction func rightLongPress(_ sender: UILongPressGestureRecognizer) {
           bullet1Direction = 1
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
           bullet1Direction = -1
           if sender.state != .ended {
               leftTouchesEnded = false
           } else {
               leftTouchesEnded = true
           }
       }
       
       @IBAction func fireButtonPressed(_ sender: UIButton) {
           bullet1IsInAction = true
           bullet1Y = Double(characterImage.center.y)
           bullet1X = Double(characterImage.center.x) + (bulletVelocity * Double(bullet1Direction))
           bullet1Image.center = CGPoint(x: bullet1X + (bulletVelocity * Double(bullet1Direction)), y: bullet1Y)
       }
    
}
