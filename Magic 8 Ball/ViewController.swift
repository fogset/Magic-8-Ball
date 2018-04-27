//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Tian Zhang on 4/1/18.
//  Copyright © 2018 Tian Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randBall : Int = 0
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    @IBOutlet weak var ballImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomBall()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func askButtonPressed(_ sender: Any) {
        randomBall()
    }
    func randomBall(){
        randBall = Int(arc4random_uniform(5))
        ballImage.image = UIImage(named: ballArray[randBall])
        
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomBall()
    }
}

