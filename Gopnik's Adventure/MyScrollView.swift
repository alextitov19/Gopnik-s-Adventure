//
//  MyScrollView.swift
//  Gopnik's Adventure
//
//  Created by Test on 4/8/20.
//  Copyright © 2020 AlexTitovProductions. All rights reserved.
//

import UIKit

class MyScrollView: UIScrollView {

    @IBAction func handlePan(_ recognizer: UIPanGestureRecognizer) {
        let translation = recognizer.translation(in: self)
        bounds.origin.y = bounds.origin.y - translation.y
        bounds.origin.x = bounds.origin.x - translation.x
        
        recognizer.setTranslation(CGPoint.zero, in: self)
    }

}
