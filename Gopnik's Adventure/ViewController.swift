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
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(moveCharacter), userInfo: nil, repeats: true)
    }

    
    @objc func moveCharacter() {
        NSLog("Character moved\n")
    }
    
    @IBAction func upButtonPressed(_ sender: UIButton) {
        
    }
    @IBAction func leftButtonPressed(_ sender: UIButton) {
        
    }
    @IBAction func rightButtonPressed(_ sender: UIButton) {
        
    }
    @IBAction func downButonPressed(_ sender: UIButton) {
    }
    
    
    
    
}

