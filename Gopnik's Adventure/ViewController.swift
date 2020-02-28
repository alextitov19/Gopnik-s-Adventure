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

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(moveCharacter), userInfo: nil, repeats: true)
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
        
        characterImage.center = CGPoint(x: characterLocationX + (rightVelocity * rightVelocityMultiplier) - (leftVelocity * leftVelocityMultiplier), y:characterLocationY + (downVelocity * downVelocityMultiplier) - (upVelocity * upVelocityMultiplier))
        
        characterLocationX = Double(characterImage.center.x)
        characterLocationY = Double(characterImage.center.y)

       
    }
    
    @IBAction func upButtonPressed(_ sender: UILongPressGestureRecognizer) {
        if sender.state != .ended {
            NSLog("up button pressed\n")
            upVelocityMultiplier = 2.5;
        }
    }
    
    @IBAction func rightButtonPressed(_ sender: UILongPressGestureRecognizer) {
        if sender.state != .ended {
            NSLog("right button pressed\n")
            rightVelocityMultiplier = 2.5;
        }
    }
    
    @IBAction func downButtonPressed(_ sender: UILongPressGestureRecognizer) {
        if sender.state != .ended {
            NSLog("down button pressed\n")
            downVelocityMultiplier = 2.5;
        }
    }
    @IBAction func leftButtonPressed(_ sender: UILongPressGestureRecognizer) {
        if sender.state != .ended {
            NSLog("left button pressed\n")
            leftVelocityMultiplier = 2.5;
        }
    }
    
    
    
    
    
    
    
    
    
    
    

    
    
    
    
}

