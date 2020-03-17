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
    //character image
    @IBOutlet var characterImage: UIImageView!
    //bots
    @IBOutlet var bot1Image: UIImageView!
    @IBOutlet var bot2Image: UIImageView!
    @IBOutlet var bot3Image: UIImageView!
    @IBOutlet var bot4Image: UIImageView!
    @IBOutlet var bot5Image: UIImageView!
    @IBOutlet var bot6Image: UIImageView!
    @IBOutlet var bot7Image: UIImageView!
    @IBOutlet var bot8Image: UIImageView!
    @IBOutlet var bot9Image: UIImageView!
    @IBOutlet var bot10Image: UIImageView!
    //bullets
    @IBOutlet var bullet1Image: UIImageView!
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
    //bot attributes
    var b1velocity: Double = 0.05
    var b2velocity: Double = 0.05
    var b3velocity: Double = 0.05
    var b4velocity: Double = 0.05
    var b5velocity: Double = 0.05
    var b6velocity: Double = 0.05
    var b7velocity: Double = 0.05
    var b8velocity: Double = 0.05
    var b9velocity: Double = 0.05
    var b10velocity: Double = 0.05
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
        //left border hit
        if (characterImage.frame.intersects(leftWallImage.frame) || characterImage.frame.intersects(I2RightImage.frame) || characterImage.frame.intersects(I5RightImage.frame) || characterImage.frame.intersects(I7RightImage.frame) || characterImage.frame.intersects(I8RightImage.frame) || characterImage.frame.intersects(I11RightImage.frame) || characterImage.frame.intersects(I13RightImage.frame) || characterImage.frame.intersects(I14RightImage.frame)){
            leftVelocityMultiplier = 0
        }
        //right border hit
        if (characterImage.frame.intersects(rightWallImage.frame) || characterImage.frame.intersects(I1LeftImage.frame) || characterImage.frame.intersects(I3LeftImage.frame) || characterImage.frame.intersects(I4LeftImage.frame) || characterImage.frame.intersects(I6LeftImage.frame) || characterImage.frame.intersects(I9LeftImage.frame) || characterImage.frame.intersects(I10LeftImage.frame) || characterImage.frame.intersects(I12LeftImage.frame) || characterImage.frame.intersects(I15LeftImage.frame) || characterImage.frame.intersects(I16LeftImage.frame)) {
            rightVelocityMultiplier = 0
        }
        //bottom border hit
        if (characterImage.frame.intersects(topWallImage.frame) || characterImage.frame.intersects(I1BottomImage.frame) || characterImage.frame.intersects(I2BottomImage.frame) || characterImage.frame.intersects(I3BottomImage.frame) || characterImage.frame.intersects(I4BottomImage.frame) || characterImage.frame.intersects(I5BottomImage.frame) || characterImage.frame.intersects(I6BottomImage.frame) || characterImage.frame.intersects(I7BottomImage.frame) || characterImage.frame.intersects(I8BottomImage.frame) || characterImage.frame.intersects(I9BottomImage.frame) || characterImage.frame.intersects(I10BottomImage.frame) || characterImage.frame.intersects(I11BottomImage.frame) || characterImage.frame.intersects(I12BottomImage.frame) || characterImage.frame.intersects(I13BottomImage.frame) || characterImage.frame.intersects(I14BottomImage.frame) || characterImage.frame.intersects(I15BottomImage.frame) || characterImage.frame.intersects(I16BottomImage.frame)) {
            upVelocityMultiplier = 0
        }
        //top border hit
        if (characterImage.frame.intersects(bottomWallImage.frame) || characterImage.frame.intersects(I1TopImage.frame) || characterImage.frame.intersects(I2TopImage.frame) || characterImage.frame.intersects(I3TopImage.frame) || characterImage.frame.intersects(I4TopImage.frame) || characterImage.frame.intersects(I5TopImage.frame) || characterImage.frame.intersects(I6TopImage.frame) || characterImage.frame.intersects(I7TopImage.frame) || characterImage.frame.intersects(I8TopImage.frame) || characterImage.frame.intersects(I9TopImage.frame) || characterImage.frame.intersects(I10TopImage.frame) || characterImage.frame.intersects(I11TopImage.frame) || characterImage.frame.intersects(I12TopImage.frame) || characterImage.frame.intersects(I13TopImage.frame) || characterImage.frame.intersects(I14TopImage.frame) || characterImage.frame.intersects(I15TopImage.frame) || characterImage.frame.intersects(I16TopImage.frame)) {
            downVelocityMultiplier = 0
        } else {
            downVelocityMultiplier += 0.01
        }
        
        
        characterImage.center = CGPoint(x: characterLocationX + (rightVelocity * rightVelocityMultiplier) - (leftVelocity * leftVelocityMultiplier), y:characterLocationY + (downVelocity * downVelocityMultiplier) - (upVelocity * upVelocityMultiplier))
        
        characterLocationX = Double(characterImage.center.x)
        characterLocationY = Double(characterImage.center.y)
       //bot logic
        bot1Image.center = CGPoint(x: bot1Image.center.x + CGFloat(b1velocity), y: bot1Image.center.y)
        bot2Image.center = CGPoint(x: bot2Image.center.x + CGFloat(b2velocity), y: bot2Image.center.y)
        bot3Image.center = CGPoint(x: bot3Image.center.x + CGFloat(b3velocity), y: bot3Image.center.y)
        bot4Image.center = CGPoint(x: bot4Image.center.x + CGFloat(b4velocity), y: bot4Image.center.y)
        bot5Image.center = CGPoint(x: bot5Image.center.x + CGFloat(b5velocity), y: bot5Image.center.y)
        bot6Image.center = CGPoint(x: bot6Image.center.x + CGFloat(b6velocity), y: bot6Image.center.y)
        bot7Image.center = CGPoint(x: bot7Image.center.x + CGFloat(b7velocity), y: bot7Image.center.y)
        bot8Image.center = CGPoint(x: bot8Image.center.x + CGFloat(b8velocity), y: bot8Image.center.y)
        bot9Image.center = CGPoint(x: bot9Image.center.x + CGFloat(b9velocity), y: bot9Image.center.y)
        bot10Image.center = CGPoint(x: bot10Image.center.x + CGFloat(b10velocity), y: bot10Image.center.y)
        
        
        if bot1Image.frame.intersects(leftWallImage.frame) || bot1Image.frame.intersects(rightWallImage.frame) {
            b1velocity *= -1
        }
        if bot2Image.frame.intersects(leftWallImage.frame) || bot2Image.frame.intersects(rightWallImage.frame) {
            b2velocity *= -1
        }
        if bot3Image.frame.intersects(leftWallImage.frame) || bot3Image.frame.intersects(rightWallImage.frame) {
            b3velocity *= -1
        }
        if bot4Image.frame.intersects(leftWallImage.frame) || bot4Image.frame.intersects(rightWallImage.frame) {
            b4velocity *= -1
        }
        if bot5Image.frame.intersects(leftWallImage.frame) || bot5Image.frame.intersects(rightWallImage.frame) {
            b5velocity *= -1
        }
        if bot6Image.frame.intersects(leftWallImage.frame) || bot6Image.frame.intersects(rightWallImage.frame) {
            b6velocity *= -1
        }
        if bot7Image.frame.intersects(leftWallImage.frame) || bot7Image.frame.intersects(rightWallImage.frame) {
            b7velocity *= -1
        }
        if bot8Image.frame.intersects(leftWallImage.frame) || bot8Image.frame.intersects(rightWallImage.frame) {
            b8velocity *= -1
        }
        if bot9Image.frame.intersects(leftWallImage.frame) || bot9Image.frame.intersects(rightWallImage.frame) {
            b9velocity *= -1
        }
        if bot10Image.frame.intersects(leftWallImage.frame) || bot10Image.frame.intersects(rightWallImage.frame) {
            b10velocity *= -1
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
    }
    
    
    
    
    
}

