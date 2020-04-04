//
//  LevelThreeController.swift
//  Gopnik's Adventure
//
//  Created by Test on 4/2/20.
//  Copyright © 2020 AlexTitovProductions. All rights reserved.
//
import UIKit

class LevelThreeController: UIViewController {
    
    
    @IBOutlet var topWallImage: UIImageView!
    @IBOutlet var leftWallImage: UIImageView!
    @IBOutlet var bottomWallImage: UIImageView!
    @IBOutlet var rightWallImage: UIImageView!
    
    @IBOutlet var I1BottomImage: UIImageView!
    @IBOutlet var I1TopImage: UIImageView!
    @IBOutlet var I1RightImage: UIImageView!
    
    @IBOutlet var I2TopImage: UIImageView!
    @IBOutlet var I2BottomImage: UIImageView!
    @IBOutlet var I2LeftImage: UIImageView!
    
    @IBOutlet var I3TopImage: UIImageView!
    @IBOutlet var I3BottomImage: UIImageView!
    @IBOutlet var I3RightImage: UIImageView!
    
    @IBOutlet var I4TopImage: UIImageView!
    @IBOutlet var I4LeftImage: UIImageView!
    @IBOutlet var I4BottomImage: UIImageView!
    
    @IBOutlet var I5TopImage: UIImageView!
    @IBOutlet var I5BottomImage: UIImageView!
    @IBOutlet var I5RightImage: UIImageView!
    
    @IBOutlet var I6TopImage: UIImageView!
    @IBOutlet var I6BottomImage: UIImageView!
    @IBOutlet var I6LeftImage: UIImageView!
    
    @IBOutlet var I7TopImage: UIImageView!
    @IBOutlet var I7BottomImage: UIImageView!
    @IBOutlet var I7RightImage: UIImageView!
    
    @IBOutlet var I8TopImage: UIImageView!
    @IBOutlet var I8BottomImage: UIImageView!
    @IBOutlet var I8LeftImage: UIImageView!
    
    @IBOutlet var I9TopImage: UIImageView!
    @IBOutlet var I9BottomImage: UIImageView!
    @IBOutlet var I9RightImage: UIImageView!
    
    @IBOutlet var I10TopImage: UIImageView!
    @IBOutlet var I10BottomImage: UIImageView!
    @IBOutlet var I10RightImage: UIImageView!
    
    @IBOutlet var I11TopImage: UIImageView!
    @IBOutlet var I11BottomImage: UIImageView!
    @IBOutlet var I11LeftImage: UIImageView!
    
    @IBOutlet var I12TopImage: UIImageView!
    @IBOutlet var I12BottomImage: UIImageView!
    @IBOutlet var I12RightImage: UIImageView!
    
    @IBOutlet var I13TopImage: UIImageView!
    @IBOutlet var I13BottomImage: UIImageView!
    @IBOutlet var I13LeftImage: UIImageView!
    
    @IBOutlet var I14TopImage: UIView!
    @IBOutlet var I14BottomImage: UIImageView!
    @IBOutlet var I14RightImage: UIImageView!
    
    @IBOutlet var I15TopImage: UIImageView!
    @IBOutlet var I15BottomImage: UIImageView!
    @IBOutlet var I15LeftImage: UIImageView!
    
    @IBOutlet var I16TopImage: UIImageView!
    @IBOutlet var I16BottomImage: UIImageView!
    @IBOutlet var I16RightImage: UIImageView!
    
    @IBOutlet var I17TopImage: UIImageView!
    @IBOutlet var I17BottomImage: UIImageView!
    @IBOutlet var I17LeftImage: UIImageView!
    
    @IBOutlet var I18TopImage: UIImageView!
    @IBOutlet var I18BottomImage: UIImageView!
    @IBOutlet var I18RightImage: UIImageView!
    
    @IBOutlet var I19TopImage: UIImageView!
    @IBOutlet var I19BottomImage: UIImageView!
    @IBOutlet var I19LeftImage: UIImageView!
    
    @IBOutlet var I20TopImage: UIImageView!
    @IBOutlet var I20BottomImage: UIImageView!
    @IBOutlet var I20RightImage: UIImageView!
    
    @IBOutlet var I21TopImage: UIImageView!
    @IBOutlet var I21BottomImage: UIImageView!
    @IBOutlet var I21LeftImage: UIImageView!
    
    @IBOutlet var I22TopImage: UIImageView!
    @IBOutlet var I22BottomImage: UIView!
    @IBOutlet var I22RightImage: UIImageView!
    
    @IBOutlet var I23TopImage: UIImageView!
    @IBOutlet var I23BottomImage: UIImageView!
    @IBOutlet var I23RightImage: UIImageView!
    
    @IBOutlet var I24TopImage: UIImageView!
    @IBOutlet var I24BottomImage: UIImageView!
    @IBOutlet var I24LeftImage: UIImageView!
    
    @IBOutlet var I25TopImage: UIImageView!
    @IBOutlet var I25BottomImage: UIImageView!
    @IBOutlet var I25RightImage: UIImageView!
    
    @IBOutlet var I26TopImage: UIImageView!
    @IBOutlet var I26BottomImage: UIImageView!
    @IBOutlet var I26RightImage: UIImageView!
    
    @IBOutlet var I27TopImage: UIImageView!
    @IBOutlet var I27BottomImage: UIImageView!
    @IBOutlet var I27LeftImage: UIImageView!
    
    @IBOutlet var I28TopImage: UIImageView!
    @IBOutlet var I28BottomImage: UIImageView!
    @IBOutlet var I28RightImage: UIImageView!
    
    @IBOutlet var I29TopImage: UIImageView!
    @IBOutlet var I29BottomImage: UIImageView!
    @IBOutlet var I29LeftImage: UIImageView!
    
    @IBOutlet var characterImage: UIImageView!
    
    @IBOutlet var bullet1Image: UIImageView!
    
    @IBOutlet var upButton: UIButton!
    
    var rightVelocityMultiplier: Double = 0.0
    var leftVelocityMultiplier: Double = 0.0
    var upVelocityMultiplier: Double = 0.0
    var downVelocityMultiplier: Double = 0.0
    var rightVelocity: Double = 0.1
    var leftVelocity: Double = 0.1
    var upVelocity: Double = 0.1
    var downVelocity: Double = 0.1
    var characterLocationX: Double = 0.0
    var characterLocationY: Double = 0.0
    var downTouchesEnded: Bool = true
    var leftTouchesEnded: Bool = true
    var rightTouchesEnded: Bool = true
    var inAir: Bool = false
    
    var bulletVelocity: Double = 0.5
    var bullet1IsInAction: Bool = false
    var bullet1Direction: Int = 1    //left = -1, right = 1
    var bullet1Y: Double = 600
    var bullet1X: Double = 300
    
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        timer = Timer.scheduledTimer(timeInterval: 0.001, target: self, selector: #selector(selector), userInfo: nil, repeats: true)
        characterLocationX = Double(characterImage.center.x)
        characterLocationY = Double(characterImage.center.y)

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
            inAir = false
        } else {
            downVelocityMultiplier += 0.01
            inAir = true
        }
        
        if inAir == true {
            upButton.isUserInteractionEnabled = false
        } else {
            upButton.isUserInteractionEnabled = true
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
    
    
    //right border hit
    func rightBorderHitCheck(frame :CGRect) -> Bool {
        if (frame.intersects(rightWallImage.frame) || frame.intersects(I2LeftImage.frame) || frame.intersects(I4LeftImage.frame) || frame.intersects(I6LeftImage.frame) || frame.intersects(I8LeftImage.frame) || frame.intersects(I11LeftImage.frame) || frame.intersects(I13LeftImage.frame) || frame.intersects(I15LeftImage.frame) || frame.intersects(I17LeftImage.frame) || frame.intersects(I19LeftImage.frame) || frame.intersects(I21LeftImage.frame) || frame.intersects(I24LeftImage.frame) || frame.intersects(I27LeftImage.frame) || frame.intersects(I29LeftImage.frame)) {
            return true
        } else {
            return false
        }
    }
    //left border hit
    func leftBorderHitCheck(frame :CGRect) -> Bool {
        if (frame.intersects(leftWallImage.frame) || frame.intersects(I1RightImage.frame) || frame.intersects(I3RightImage.frame) || frame.intersects(I5RightImage.frame) || frame.intersects(I7RightImage.frame) || frame.intersects(I9RightImage.frame) || frame.intersects(I10RightImage.frame) || frame.intersects(I12RightImage.frame) || frame.intersects(I14RightImage.frame) || frame.intersects(I16RightImage.frame) || frame.intersects(I18RightImage.frame) || frame.intersects(I20RightImage.frame) || frame.intersects(I22RightImage.frame) || frame.intersects(I23RightImage.frame) || frame.intersects(I25RightImage.frame) || frame.intersects(I26RightImage.frame) || frame.intersects(I28RightImage.frame)) {
            return true
        } else {
            return false
        }
    }
    //top border hit
    func topBorderHitCheck(frame :CGRect) -> Bool {
        if (frame.intersects(bottomWallImage.frame) || frame.intersects(I1TopImage.frame) || frame.intersects(I2TopImage.frame) || frame.intersects(I3TopImage.frame) || frame.intersects(I4TopImage.frame) || frame.intersects(I5TopImage.frame) || frame.intersects(I6TopImage.frame) || frame.intersects(I7TopImage.frame) || frame.intersects(I8TopImage.frame) || frame.intersects(I9TopImage.frame) || frame.intersects(I10TopImage.frame) || frame.intersects(I11TopImage.frame) || frame.intersects(I12TopImage.frame) || frame.intersects(I13TopImage.frame) || frame.intersects(I14TopImage.frame) || frame.intersects(I15TopImage.frame) || frame.intersects(I16TopImage.frame) || frame.intersects(I17TopImage.frame) || frame.intersects(I18TopImage.frame) || frame.intersects(I19TopImage.frame) || frame.intersects(I20TopImage.frame) || frame.intersects(I21TopImage.frame)) {
            return true
        } else {
            return false
        }
    }
    //bottom border hit
    func bottomBorderHitCheck(frame :CGRect) -> Bool {
        if (frame.intersects(topWallImage.frame) || frame.intersects(I1BottomImage.frame) || frame.intersects(I2BottomImage.frame) || frame.intersects(I3BottomImage.frame) || frame.intersects(I4BottomImage.frame) || frame.intersects(I5BottomImage.frame) || frame.intersects(I6BottomImage.frame) || frame.intersects(I7BottomImage.frame) || frame.intersects(I8BottomImage.frame) || frame.intersects(I9BottomImage.frame) || frame.intersects(I10BottomImage.frame) || frame.intersects(I11BottomImage.frame) || frame.intersects(I12BottomImage.frame) || frame.intersects(I13BottomImage.frame) || frame.intersects(I14BottomImage.frame) || frame.intersects(I15BottomImage.frame) || frame.intersects(I16BottomImage.frame) || frame.intersects(I17BottomImage.frame) || frame.intersects(I18BottomImage.frame) || frame.intersects(I19BottomImage.frame) || frame.intersects(I20BottomImage.frame) || frame.intersects(I21BottomImage.frame)) {
            return true
        } else {
            return false
        }
    }
    
    
    
    @IBAction func upButtonTapped(_ sender: UIButton) {
        upVelocityMultiplier = 5
        
    }
    
    
    @IBAction func leftLongPress(_ sender: UILongPressGestureRecognizer) {
        bullet1Direction = -1
        if sender.state != .ended {
            leftTouchesEnded = false
        } else {
            leftTouchesEnded = true
        }
    }
    
    @IBAction func downLongPress(_ sender: UILongPressGestureRecognizer) {
        if sender.state != .ended {
            downTouchesEnded = false
        } else {
            downTouchesEnded = true
        }
    }
    
    
    @IBAction func rightLongPress(_ sender: UILongPressGestureRecognizer) {
        bullet1Direction = 1
        if sender.state != .ended {
            rightTouchesEnded = false
        } else {
            rightTouchesEnded = true
        }
    }
    
    @IBAction func fireButtonTapped(_ sender: UIButton) {
        bullet1IsInAction = true
        bullet1Y = Double(characterImage.center.y)
        bullet1X = Double(characterImage.center.x) + (bulletVelocity * Double(bullet1Direction))
        bullet1Image.center = CGPoint(x: bullet1X + (bulletVelocity * Double(bullet1Direction)), y: bullet1Y)
    }
    
    
}
