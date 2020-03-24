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
        
        
        
        
        characterImage.center = CGPoint(x: characterLocationX + (rightVelocity * rightVelocityMultiplier) - (leftVelocity * leftVelocityMultiplier), y:characterLocationY + (downVelocity * downVelocityMultiplier) - (upVelocity * upVelocityMultiplier))
               
               characterLocationX = Double(characterImage.center.x)
               characterLocationY = Double(characterImage.center.y)
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
