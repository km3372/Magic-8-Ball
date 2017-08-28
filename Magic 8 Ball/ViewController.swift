//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by kenneth moody on 8/27/17.
//  Copyright © 2017 iMoody Studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    var ballArry = ["ball1", "ball2", "ball3", "ball4", "ball5",]
    
     var randomBallIndex: Int = 0
    
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
       updateBallImage()
    }

    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        updateBallImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
    
    func updateBallImage() {
        
        randomBallIndex = Int(arc4random_uniform(4))
        
        imageView.image = UIImage(named: ballArry[randomBallIndex])

    }
    
    

}

