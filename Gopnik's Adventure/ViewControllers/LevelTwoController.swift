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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let timer = Timer.scheduledTimer(timeInterval: 0.001, target: self, selector: #selector(selector), userInfo: nil, repeats: true)
    }
    
    @objc func selector() {
        
    }
    
    
    
}
