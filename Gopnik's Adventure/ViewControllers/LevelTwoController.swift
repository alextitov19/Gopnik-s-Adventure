//
//  LevelTwoController.swift
//  Gopnik's Adventure
//
//  Created by Test on 3/27/20.
//  Copyright © 2020 AlexTitovProductions. All rights reserved.
//

import UIKit



class Bot {
    var velocity: Double = 0.0
    var isInActrion: Bool = false
    var image: UIImageView?
}

class BouncyBot: Bot {
    var topRect = CGRect.init(x: 0.0, y: 0.0, width: 1.0, height: 1.0)
    var bottomRect = CGRect.init(x: 0.0, y: 0.0, width: 1.0, height: 1.0)
}
class LevelTwoController: UIViewController {
    
    //Borders
    @IBOutlet var topWallImage: UIImageView!
    @IBOutlet var leftWallImage: UIImageView!
    @IBOutlet var rightWallImage: UIImageView!
    @IBOutlet var bottomWallImage: UIImageView!
    //Image 1
    @IBOutlet var I1TopImage: UIImageView!
    @IBOutlet var I1BottomImage: UIImageView!
    @IBOutlet var I1LeftImage: UIImageView!
    //Image 2
    @IBOutlet var I2TopImage: UIImageView!
    @IBOutlet var I2BottomImage: UIImageView!
    @IBOutlet var I2RightImage: UIImageView!
    //Image 3
    @IBOutlet var I3TopImage: UIImageView!
    @IBOutlet var I3BottomImage: UIImageView!
    @IBOutlet var I3RightImage: UIImageView!
    //Image 4
    @IBOutlet var I4TopImage: UIImageView!
    @IBOutlet var I4BottomImage: UIImageView!
    @IBOutlet var I4LeftImage: UIImageView!
    //Image 5
    @IBOutlet var I5TopImage: UIImageView!
    @IBOutlet var I5BottomImage: UIImageView!
    @IBOutlet var I5RightImage: UIImageView!
    //Image 6
    @IBOutlet var I6TopImage: UIImageView!
    @IBOutlet var I6BottomImage: UIImageView!
    @IBOutlet var I6LeftImage: UIImageView!
    //Image 7
    @IBOutlet var I7TopImage: UIImageView!
    @IBOutlet var I7BottomImage: UIImageView!
    @IBOutlet var I7RightImage: UIImageView!
    //Image 8
    @IBOutlet var I8TopImage: UIImageView!
    @IBOutlet var I8BottomImage: UIImageView!
    @IBOutlet var I8RightImage: UIImageView!
    //Image 9
    @IBOutlet var I9TopImage: UIImageView!
    @IBOutlet var I9BottomImage: UIImageView!
    @IBOutlet var I9LeftImage: UIImageView!
    //Image 10
    @IBOutlet var I10TopImage: UIImageView!
    @IBOutlet var I10BottomImage: UIImageView!
    @IBOutlet var I10RightImage: UIImageView!
    //Image 11
    @IBOutlet var I11TopImage: UIImageView!
    @IBOutlet var I11BottomImage: UIImageView!
    @IBOutlet var I11LeftImage: UIImageView!
    //Image 12
    @IBOutlet var I12TopImage: UIImageView!
    @IBOutlet var I12BottomImage: UIImageView!
    @IBOutlet var I12LeftImage: UIImageView!
    @IBOutlet var I12RightImage: UIImageView!
    //Image 13
    @IBOutlet var I13TopImage: UIImageView!
    @IBOutlet var I13BottomImage: UIImageView!
    @IBOutlet var I13RightImage: UIImageView!
    //Image 14
    @IBOutlet var I14TopImage: UIImageView!
    @IBOutlet var I14BottomImage: UIImageView!
    @IBOutlet var I14LeftImage: UIImageView!
    //Image 15
    @IBOutlet var I15TopImage: UIImageView!
    @IBOutlet var I15BottomImage: UIImageView!
    @IBOutlet var I15RightImage: UIImageView!
    //Image 16
    @IBOutlet var I16TopImage: UIImageView!
    @IBOutlet var I16BottomImage: UIImageView!
    @IBOutlet var I16LeftImage: UIImageView!
    //Image 17
    @IBOutlet var I17TopImage: UIImageView!
    @IBOutlet var I17BottomImage: UIImageView!
    @IBOutlet var I17RightImage: UIImageView!
    //Image 18
    @IBOutlet var I18TopImage: UIImageView!
    @IBOutlet var I18BottomImage: UIImageView!
    @IBOutlet var I18LeftImage: UIImageView!
    //Image 19
    @IBOutlet var I19TopImage: UIImageView!
    @IBOutlet var I19BottomImage: UIImageView!
    @IBOutlet var I19RightImage: UIImageView!
    //Image 20
    @IBOutlet var I20TopImage: UIImageView!
    @IBOutlet var I20BottomImage: UIImageView!
    @IBOutlet var I20LeftImage: UIImageView!
    //Image 21
    @IBOutlet var I21TopImage: UIImageView!
    @IBOutlet var I21BottomImage: UIImageView!
    @IBOutlet var I21RightImage: UIImageView!
    //Character Images
    @IBOutlet var characterImage: UIImageView!
    //Bots
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
    @IBOutlet var bot11Image: UIImageView!
    @IBOutlet var bot12Image: UIImageView!
    @IBOutlet var bot13Image: UIImageView!
    //Buttons
    @IBOutlet var upButton: UIButton!
    //Bullets
    @IBOutlet var bullet1Image: UIImageView!
    //Bouncy Bots
    @IBOutlet var bouncyBot1Image: UIImageView!
    @IBOutlet var bouncyBot2Image: UIImageView!
    //Turret
    @IBOutlet var turretImage: UIImageView!
    @IBOutlet var fireballImage: UIImageView!
    
    @IBOutlet var teleportImage: UIImageView!
    
    
    
    //character movement attributes
    var rightVelocityMultiplier: Double = 0.0
    var leftVelocityMultiplier: Double = 0.0
    var upVelocityMultiplier: Double = 0.0
    var downVelocityMultiplier: Double = 0.0
    var rightVelocity: Double = 0.1
    var leftVelocity: Double = 0.1
    var upVelocity: Double = 0.1
    var downVelocity: Double = 0.1
    var characterLocationX: Double = 7.0
    var characterLocationY: Double = 725.0
    var downTouchesEnded: Bool = true
    var leftTouchesEnded: Bool = true
    var rightTouchesEnded: Bool = true
    var inAir: Bool = false
    //bot declarations
    var bots: [Bot] = []
    var bot1 = Bot()
    var bot2 = Bot()
    var bot3 = Bot()
    var bot4 = Bot()
    var bot5 = Bot()
    var bot6 = Bot()
    var bot7 = Bot()
    var bot8 = Bot()
    var bot9 = Bot()
    var bot10 = Bot()
    var bot11 = Bot()
    var bot12 = Bot()
    var bot13 = Bot()
    var bouncyBots: [BouncyBot] = []
    var bouncyBot1 = BouncyBot()
    var bouncyBot2 = BouncyBot()
    //bot assignments
    
    //bullet attributes
    var bulletVelocity: Double = 0.5
    var bullet1IsInAction: Bool = false
    var bullet1Direction: Int = 1    //left = -1, right = 1
    var bullet1Y: Double = 600
    var bullet1X: Double = 300
    
    var timer: Timer?
    var fireballVelocityX: Double = 0.0
    var fireballVelocityY: Double = 0.0
    var fireballCenterX: Double = 0.0
    var fireballCenterY: Double = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        timer = Timer.scheduledTimer(timeInterval: 0.001, target: self, selector: #selector(selector), userInfo: nil, repeats: true)
        bots = [bot1, bot2, bot3, bot4, bot5, bot6, bot7, bot8, bot9, bot10, bot11, bot12, bot13]
        let botImages = [bot1Image, bot2Image, bot3Image, bot4Image, bot5Image, bot6Image, bot7Image, bot8Image, bot9Image, bot10Image, bot11Image, bot12Image, bot13Image]
        let bouncyBotImages = [bouncyBot1Image, bouncyBot2Image]
        bouncyBots = [bouncyBot1, bouncyBot2]
        for i in 0..<bots.count {
            bots[i].isInActrion = true
            bots[i].velocity = 0.2 + (Double.random(in: -0.1..<0.1))
            bots[i].image = botImages[i]
        }
        for i in 0..<bouncyBots.count {
            bouncyBots[i].isInActrion = true
            bouncyBots[i].velocity = 0.05 + (Double.random(in: -0.02..<0.02))
            bouncyBots[i].image = bouncyBotImages[i]
        }
        fireballCenterX = Double(fireballImage.center.x)
        fireballCenterY = Double(fireballImage.center.y)
        shootFireball()
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
        //Bot itteration logic
        for i in 0..<bots.count {
            bots[i].image!.center = CGPoint(x: bots[i].image!.center.x + CGFloat(bots[i].velocity), y: bots[i].image!.center.y)
            if bots[i].image!.frame.intersects(leftWallImage.frame) || bots[i].image!.frame.intersects(rightWallImage.frame) {
                bots[i].velocity *= -1
            }
            if bullet1Image.frame.intersects(bots[i].image!.frame) {
                bullet1IsInAction = false
                bots[i].isInActrion = false
                bots[i].image!.isHidden = true
            }
            if characterImage.frame.intersects(bots[i].image!.frame) && bots[i].isInActrion == true {
                returnToMenu()
            }
        }
        
        for i in 0..<bouncyBots.count {
            bouncyBots[i].image!.center = CGPoint(x: bouncyBots[i].image!.center.x + CGFloat(bouncyBots[i].velocity), y: bouncyBots[i].image!.center.y)
            bouncyBots[i].topRect = CGRect.init(x: bouncyBots[i].image!.frame.origin.x, y: bouncyBots[i].image!.frame.origin.y, width: bouncyBots[i].image!.frame.width, height: CGFloat(6))
            bouncyBots[i].bottomRect = CGRect.init(x: bouncyBots[i].image!.frame.origin.x, y: bouncyBots[i].image!.frame.origin.y + CGFloat(7), width: bouncyBots[i].image!.frame.width, height: bouncyBots[i].image!.frame.height - CGFloat(7))
            if bouncyBots[i].image!.frame.intersects(leftWallImage.frame) || bouncyBots[i].image!.frame.intersects(rightWallImage.frame) {
                bouncyBots[i].velocity *= -1
            }
            if characterImage.frame.intersects(bouncyBots[i].topRect) && bouncyBots[i].isInActrion == true {
                upVelocityMultiplier = 10
                downVelocityMultiplier = 0
            }
            if characterImage.frame.intersects(bouncyBots[i].bottomRect) && bouncyBots[i].isInActrion == true {
                returnToMenu()
            }
        }
        
        
        if bullet1IsInAction == true {
            bullet1Image.isHidden = false
            bullet1Image.center = CGPoint(x: bullet1X + (bulletVelocity * Double(bullet1Direction)), y: bullet1Y)
            bullet1X = Double(bullet1Image.center.x)
            bullet1Y = Double(bullet1Image.center.y)
        } else {
            bullet1Image.isHidden = true
        }
        
        fireballImage.center = CGPoint(x: Double(fireballImage.center.x) + fireballVelocityX, y: Double(fireballImage.center.y) + fireballVelocityY)
        
        if(rightBorderHitCheck(frame: fireballImage.frame) || leftBorderHitCheck(frame: fireballImage.frame) || topBorderHitCheck(frame: fireballImage.frame) || bottomBorderHitCheck(frame: fireballImage.frame)) {
            shootFireball()
        }
        
        
        if characterImage.frame.intersects(fireballImage.frame) {
            returnToMenu()
        }
        
        if characterImage.frame.intersects(teleportImage.frame){
            advanceToNextLevel()
        }
        
    }
    
    //right border hit
    func rightBorderHitCheck(frame :CGRect) -> Bool {
        if (frame.intersects(rightWallImage.frame) || frame.intersects(I1LeftImage.frame) || frame.intersects(I4LeftImage.frame) || frame.intersects(I6LeftImage.frame) || frame.intersects(I9LeftImage.frame) || frame.intersects(I11LeftImage.frame) || frame.intersects(I12LeftImage.frame) || frame.intersects(I14LeftImage.frame) || frame.intersects(I16LeftImage.frame) || frame.intersects(I18LeftImage.frame) || frame.intersects(I20LeftImage.frame)) {
            return true
        } else {
            return false
        }
    }
    //left border hit
    func leftBorderHitCheck(frame :CGRect) -> Bool {
        if (frame.intersects(leftWallImage.frame) || frame.intersects(I2RightImage.frame) || frame.intersects(I3RightImage.frame) || frame.intersects(I5RightImage.frame) || frame.intersects(I7RightImage.frame) || frame.intersects(I8RightImage.frame) || frame.intersects(I10RightImage.frame) || frame.intersects(I12RightImage.frame) || frame.intersects(I13RightImage.frame) || frame.intersects(I15RightImage.frame) || frame.intersects(I17RightImage.frame) || frame.intersects(I19RightImage.frame) || frame.intersects(I21RightImage.frame)) {
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
        NSLog("Layer2 bottomBorderHitCheck");
        if (frame.intersects(topWallImage.frame) || frame.intersects(I1BottomImage.frame) || frame.intersects(I2BottomImage.frame) || frame.intersects(I3BottomImage.frame) || frame.intersects(I4BottomImage.frame) || frame.intersects(I5BottomImage.frame) || frame.intersects(I6BottomImage.frame) || frame.intersects(I7BottomImage.frame) || frame.intersects(I8BottomImage.frame) || frame.intersects(I9BottomImage.frame) || frame.intersects(I10BottomImage.frame) || frame.intersects(I11BottomImage.frame) || frame.intersects(I12BottomImage.frame) || frame.intersects(I13BottomImage.frame) || frame.intersects(I14BottomImage.frame) || frame.intersects(I15BottomImage.frame) || frame.intersects(I16BottomImage.frame) || frame.intersects(I17BottomImage.frame) || frame.intersects(I18BottomImage.frame) || frame.intersects(I19BottomImage.frame) || frame.intersects(I20BottomImage.frame) || frame.intersects(I21BottomImage.frame)) {
            return true
        } else {
            return false
        }
    }
    
    func returnToMenu() {
        timer!.invalidate()
        timer = nil
        let storyboard = UIStoryboard(name: "MainMenu", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "MainMenuController") as UIViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
    func advanceToNextLevel() {
        timer!.invalidate()
        timer = nil
        let storyboard = UIStoryboard(name: "LevelThree", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "LevelThreeController") as UIViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
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
    
    func shootFireball() {
        fireballVelocityX = ((characterLocationX - fireballCenterX) / 5000)
        fireballVelocityY = ((characterLocationY - fireballCenterY) / 5000)
        fireballImage.center = CGPoint(x: fireballCenterX, y: fireballCenterY)
    }
    
    
    
}






