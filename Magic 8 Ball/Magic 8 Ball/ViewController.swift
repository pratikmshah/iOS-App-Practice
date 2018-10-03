//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Pratik Shah on 10/3/18.
//  Copyright © 2018 Pratik Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber: Int = 0;

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateMagicBallImage()
        
    }

    @IBOutlet weak var magicBallImage: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: Any) {
        updateMagicBallImage()
    }
    
    func updateMagicBallImage() {
        randomBallNumber = Int.random(in: 0 ... 4)
        magicBallImage.image = UIImage(named: ballArray[randomBallNumber])
    }
    
}

