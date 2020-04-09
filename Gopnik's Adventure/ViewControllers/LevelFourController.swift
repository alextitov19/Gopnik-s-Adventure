//
//  LevelFourController.swift
//  Gopnik's Adventure
//
//  Created by Test on 4/8/20.
//  Copyright © 2020 AlexTitovProductions. All rights reserved.
//

import UIKit

class LevelFourController: UIViewController {
    
    @IBOutlet var MainScrollView: MyScrollView!
    
    @IBOutlet var bottomWallImage: UIImageView!
    @IBOutlet var leftWallImage: UIImageView!
    @IBOutlet var rightWallImage: UIImageView!
    @IBOutlet var topWallImage: UIImageView!
    
    @IBOutlet var I1TopImage: UIImageView!
    @IBOutlet var I1BottomImage: UIImageView!
    @IBOutlet var I1RightImage: UIImageView!
    
    @IBOutlet var I2TopImage: UIImageView!
    @IBOutlet var I2BottomImage: UIImageView!
    @IBOutlet var I2LeftImage: UIImageView!
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBOutlet var characterImage: UIImageView!
    
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
    var previousCharacterLocationX: Double = 0.0
    var previousCharacterLocationY: Double = 0.0
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
        MainScrollView.bounds.origin.x = characterImage.bounds.origin.x
        MainScrollView.bounds.origin.y = characterImage.bounds.origin.y
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
    
    previousCharacterLocationX = characterLocationX
    previousCharacterLocationY = characterLocationY
    
    characterImage.center = CGPoint(x: characterLocationX + (rightVelocity * rightVelocityMultiplier) - (leftVelocity * leftVelocityMultiplier), y:characterLocationY + (downVelocity * downVelocityMultiplier) - (upVelocity * upVelocityMultiplier))
    
    characterLocationX = Double(characterImage.center.x)
    characterLocationY = Double(characterImage.center.y)
        
        MainScrollView.bounds.origin.x = MainScrollView.bounds.origin.x + CGFloat((characterLocationX - previousCharacterLocationX))
        MainScrollView.bounds.origin.y = MainScrollView.bounds.origin.y + CGFloat((characterLocationY - previousCharacterLocationY))
    }
    
    
    
    
    //right border hit
    func rightBorderHitCheck(frame :CGRect) -> Bool {
        if (frame.intersects(rightWallImage.frame)) {
            return true
        } else {
            return false
        }
    }
    //left border hit
    func leftBorderHitCheck(frame :CGRect) -> Bool {
        if (frame.intersects(leftWallImage.frame)) {
            return true
        } else {
            return false
        }
    }
    //top border hit
    func topBorderHitCheck(frame :CGRect) -> Bool {
        if (frame.intersects(bottomWallImage.frame)) {
            return true
        } else {
            return false
        }
    }
    //bottom border hit
    func bottomBorderHitCheck(frame :CGRect) -> Bool {
        if (frame.intersects(topWallImage.frame)) {
            return true
        } else {
            return false
        }
    }
    
    
    
     
     
     @IBAction func upButtonTapped(_ sender: UIButton) {
        upVelocityMultiplier = 7.2
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
    
    
    
    
}
