//
//  LevelTwoController.swift
//  Gopnik's Adventure
//
//  Created by Test on 3/27/20.
//  Copyright © 2020 AlexTitovProductions. All rights reserved.
//

import UIKit

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
        struct Bot {
            var velocity: Double
            var isInActrion: Bool
            
        }
        var bot1 = Bot(velocity: 0.05, isInActrion: true)
        var bot2 = Bot(velocity: 0.05, isInActrion: true)
        var bot3 = Bot(velocity: 0.05, isInActrion: true)
        var bot4 = Bot(velocity: 0.05, isInActrion: true)
        var bot5 = Bot(velocity: 0.05, isInActrion: true)
        var bot6 = Bot(velocity: 0.05, isInActrion: true)
        var bot7 = Bot(velocity: 0.05, isInActrion: true)
        var bot8 = Bot(velocity: 0.05, isInActrion: true)
        var bot9 = Bot(velocity: 0.05, isInActrion: true)
        var bot10 = Bot(velocity: 0.05, isInActrion: true)
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
           //bot logic
//            bot1Image.center = CGPoint(x: bot1Image.center.x + CGFloat(bot1.velocity), y: bot1Image.center.y)
//            bot2Image.center = CGPoint(x: bot2Image.center.x + CGFloat(bot2.velocity), y: bot2Image.center.y)
//            bot3Image.center = CGPoint(x: bot3Image.center.x + CGFloat(bot3.velocity), y: bot3Image.center.y)
//            bot4Image.center = CGPoint(x: bot4Image.center.x + CGFloat(bot4.velocity), y: bot4Image.center.y)
//            bot5Image.center = CGPoint(x: bot5Image.center.x + CGFloat(bot5.velocity), y: bot5Image.center.y)
//            bot6Image.center = CGPoint(x: bot6Image.center.x + CGFloat(bot6.velocity), y: bot6Image.center.y)
//            bot7Image.center = CGPoint(x: bot7Image.center.x + CGFloat(bot7.velocity), y: bot7Image.center.y)
//            bot8Image.center = CGPoint(x: bot8Image.center.x + CGFloat(bot8.velocity), y: bot8Image.center.y)
//            bot9Image.center = CGPoint(x: bot9Image.center.x + CGFloat(bot9.velocity), y: bot9Image.center.y)
//            bot10Image.center = CGPoint(x: bot10Image.center.x + CGFloat(bot10.velocity), y: bot10Image.center.y)
//
//
//            if bot1Image.frame.intersects(leftWallImage.frame) || bot1Image.frame.intersects(rightWallImage.frame) {
//                bot1.velocity *= -1
//            }
//            if bot2Image.frame.intersects(leftWallImage.frame) || bot2Image.frame.intersects(rightWallImage.frame) {
//                bot2.velocity *= -1
//            }
//            if bot3Image.frame.intersects(leftWallImage.frame) || bot3Image.frame.intersects(rightWallImage.frame) {
//                bot3.velocity *= -1
//            }
//            if bot4Image.frame.intersects(leftWallImage.frame) || bot4Image.frame.intersects(rightWallImage.frame) {
//                bot4.velocity *= -1
//            }
//            if bot5Image.frame.intersects(leftWallImage.frame) || bot5Image.frame.intersects(rightWallImage.frame) {
//                bot5.velocity *= -1
//            }
//            if bot6Image.frame.intersects(leftWallImage.frame) || bot6Image.frame.intersects(rightWallImage.frame) {
//                bot6.velocity *= -1
//            }
//            if bot7Image.frame.intersects(leftWallImage.frame) || bot7Image.frame.intersects(rightWallImage.frame) {
//                bot7.velocity *= -1
//            }
//            if bot8Image.frame.intersects(leftWallImage.frame) || bot8Image.frame.intersects(rightWallImage.frame) {
//                bot8.velocity *= -1
//            }
//            if bot9Image.frame.intersects(leftWallImage.frame) || bot9Image.frame.intersects(rightWallImage.frame) {
//                bot9.velocity *= -1
//            }
//            if bot10Image.frame.intersects(leftWallImage.frame) || bot10Image.frame.intersects(rightWallImage.frame) {
//                bot10.velocity *= -1
//            }
//
//
//
//
//            if leftBorderHitCheck(frame: bullet1Image.frame) == true || rightBorderHitCheck(frame: bullet1Image.frame) == true{
//                bullet1IsInAction = false
//            }
//
//
//            if bullet1Image.frame.intersects(bot1Image.frame) {
//                bullet1IsInAction = false
//                bot1.isInActrion = false
//                bot1Image.isHidden = true
//            }
//
//            if bullet1Image.frame.intersects(bot2Image.frame) {
//                bullet1IsInAction = false
//                bot2.isInActrion = false
//                bot2Image.isHidden = true
//
//
//            }
//
//            if bullet1Image.frame.intersects(bot3Image.frame) {
//                bullet1IsInAction = false
//                bot3.isInActrion = false
//                bot3Image.isHidden = true
//
//
//            }
//
//            if bullet1Image.frame.intersects(bot4Image.frame) {
//                bullet1IsInAction = false
//                bot4.isInActrion = false
//                bot4Image.isHidden = true
//
//
//            }
//
//            if bullet1Image.frame.intersects(bot5Image.frame) {
//                bullet1IsInAction = false
//                bot5.isInActrion = false
//                bot5Image.isHidden = true
//
//
//            }
//
//            if bullet1Image.frame.intersects(bot6Image.frame) {
//                bullet1IsInAction = false
//                bot6.isInActrion = false
//                bot6Image.isHidden = true
//
//
//            }
//
//            if bullet1Image.frame.intersects(bot7Image.frame) {
//                bullet1IsInAction = false
//                bot7.isInActrion = false
//                bot7Image.isHidden = true
//
//            }
//
//            if bullet1Image.frame.intersects(bot8Image.frame) {
//                bullet1IsInAction = false
//                bot8.isInActrion = false
//                bot8Image.isHidden = true
//
//            }
//
//            if bullet1Image.frame.intersects(bot9Image.frame) {
//                bullet1IsInAction = false
//                bot9.isInActrion = false
//                bot9Image.isHidden = true
//
//            }
//
//            if bullet1Image.frame.intersects(bot10Image.frame) {
//                bullet1IsInAction = false
//                bot10.isInActrion = false
//                bot10Image.isHidden = true
//
//            }
//
//            if characterImage.frame.intersects(bot1Image.frame) && bot1.isInActrion == true {
//                returnToMenu()
//            }
//
//            if characterImage.frame.intersects(bot2Image.frame) && bot2.isInActrion == true {
//                returnToMenu()
//            }
//
//            if characterImage.frame.intersects(bot3Image.frame) && bot3.isInActrion == true {
//                returnToMenu()
//            }
//
//            if characterImage.frame.intersects(bot4Image.frame) && bot4.isInActrion == true {
//                returnToMenu()
//            }
//
//            if characterImage.frame.intersects(bot5Image.frame) && bot5.isInActrion == true {
//                returnToMenu()
//            }
//
//            if characterImage.frame.intersects(bot6Image.frame) && bot6.isInActrion == true {
//                returnToMenu()
//            }
//
//            if characterImage.frame.intersects(bot7Image.frame) && bot7.isInActrion == true {
//                returnToMenu()
//            }
//
//            if characterImage.frame.intersects(bot8Image.frame) && bot8.isInActrion == true {
//                returnToMenu()
//            }
//
//            if characterImage.frame.intersects(bot9Image.frame) && bot9.isInActrion == true {
//                returnToMenu()
//            }
//
//            if characterImage.frame.intersects(bot10Image.frame) && bot10.isInActrion == true {
//                returnToMenu()
//            }
//
//            if characterImage.frame.intersects(teleportImage.frame){
//                advanceToNextLevel()
//            }
//
//            if bullet1IsInAction == true {
//                bullet1Image.isHidden = false
//                bullet1Image.center = CGPoint(x: bullet1X + (bulletVelocity * Double(bullet1Direction)), y: bullet1Y)
//                bullet1X = Double(bullet1Image.center.x)
//                bullet1Y = Double(bullet1Image.center.y)
//            } else {
//                bullet1Image.isHidden = true
//            }
            
            
            
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
                  if (frame.intersects(topWallImage.frame) || frame.intersects(I1BottomImage.frame) || frame.intersects(I2BottomImage.frame) || frame.intersects(I3BottomImage.frame) || frame.intersects(I4BottomImage.frame) || frame.intersects(I5BottomImage.frame) || frame.intersects(I6BottomImage.frame) || frame.intersects(I7BottomImage.frame) || frame.intersects(I8BottomImage.frame) || frame.intersects(I9BottomImage.frame) || frame.intersects(I10BottomImage.frame) || frame.intersects(I11BottomImage.frame) || frame.intersects(I12BottomImage.frame) || frame.intersects(I13BottomImage.frame) || frame.intersects(I14BottomImage.frame) || frame.intersects(I15BottomImage.frame) || frame.intersects(I16BottomImage.frame) || frame.intersects(I17BottomImage.frame) || frame.intersects(I18BottomImage.frame) || frame.intersects(I19BottomImage.frame) || frame.intersects(I20BottomImage.frame) || frame.intersects(I21BottomImage.frame)) {
                      return true
                  } else {
                      return false
                  }
              }



        

        func returnToMenu() {
            let storyboard = UIStoryboard(name: "MainMenu", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "MainMenuController") as UIViewController
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true, completion: nil)
        }
        
        func advanceToNextLevel() {
            let storyboard = UIStoryboard(name: "LevelTwo", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "LevelTwoController") as UIViewController
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
        
//        @IBAction func fireButtonPressed(_ sender: UIButton) {
//            bullet1IsInAction = true
//            bullet1Y = Double(characterImage.center.y)
//            bullet1X = Double(characterImage.center.x) + (bulletVelocity * Double(bullet1Direction))
//            bullet1Image.center = CGPoint(x: bullet1X + (bulletVelocity * Double(bullet1Direction)), y: bullet1Y)
//        }
//
        
        
        
        
}





