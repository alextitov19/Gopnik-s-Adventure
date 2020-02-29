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
    
    
    @IBOutlet var upButton: UIButton!
    @IBOutlet var leftButton: UIButton!
    @IBOutlet var rightButton: UIButton!
    @IBOutlet var downButton: UIButton!
    
    
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
    var upPressed: Bool = false;
    var downPressed: Bool = false;
    var leftPressed: Bool = false;
    var rightPressed: Bool = false;


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(moveCharacter), userInfo: nil, repeats: true)
        upButton.addTarget(self, action: #selector(upButtonCalceled), for: UIControl.Event.touchCancel)
        downButton.addTarget(self, action: #selector(downButtonCalceled), for: UIControl.Event.touchCancel)
        leftButton.addTarget(self, action: #selector(leftButtonCalceled), for: UIControl.Event.touchCancel)
        rightButton.addTarget(self, action: #selector(rightButtonCalceled), for: UIControl.Event.touchCancel)
        upButton.addTarget(self, action: #selector(upButtonPressed), for: UIControl.Event.touchDown)
        downButton.addTarget(self, action: #selector(downButtonPressed), for: UIControl.Event.touchDown)
        leftButton.addTarget(self, action: #selector(leftButtonPressed), for: UIControl.Event.touchDown)
        rightButton.addTarget(self, action: #selector(rightButtonPressed), for: UIControl.Event.touchDown)

    }
    
    
    @objc func upButtonCalceled() {
        upPressed = false;
    }
    
    @objc func downButtonCalceled() {
        downPressed = false;
    }
    
    @objc func leftButtonCalceled() {
        leftPressed = false;
    }
    
    @objc func rightButtonCalceled() {
        rightPressed = false;
    }
    
    @objc func upButtonPressed() {
        upPressed = true;
    }
    
    @objc func downButtonPressed() {
        downPressed = true;
    }
    
    @objc func leftButtonPressed() {
        leftPressed = true;
    }
    
    @objc func rightButtonPressed() {
        rightPressed = true;
    }
    
    @objc func moveCharacter() {
        if rightVelocityMultiplier > 0 {
            rightVelocityMultiplier -= 0.1;
        }
        if leftVelocityMultiplier > 0 {
            leftVelocityMultiplier -= 0.1;
        }
        if upVelocityMultiplier > 0 {
            upVelocityMultiplier -= 0.1;
        }
        if downVelocityMultiplier > 0 {
            downVelocityMultiplier -= 0.1;
        }
        
        if rightPressed == true {
            rightVelocityMultiplier  = 2;
        }
        if leftPressed == true {
            leftVelocityMultiplier  = 2;
        }
        if upPressed == true {
            upVelocityMultiplier  = 2;
        }
        if downPressed == true {
            downVelocityMultiplier = 2;
        }
        
        characterImage.center = CGPoint(x: characterLocationX + (rightVelocity * rightVelocityMultiplier) - (leftVelocity * leftVelocityMultiplier), y:characterLocationY + (downVelocity * downVelocityMultiplier) - (upVelocity * upVelocityMultiplier))
        
        characterLocationX = Double(characterImage.center.x)
        characterLocationY = Double(characterImage.center.y)

       
    }
    
    
    
    
    
    

    
    
    
    
}

