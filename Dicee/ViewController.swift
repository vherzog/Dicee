//
//  ViewController.swift
//  Dicee
//
//  Created by Veronica Herzog on 11/20/18.
//  Copyright © 2018 Veronica Herzog. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //rollDice()
        updateDiceImages()
    }
    
    func updateDiceImages() {
        
        // Generate random numbers
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        // Display on dice
        diceImageView1.image = UIImage(named : diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
//    func rollDice() {
//
//        // Roll dice 4 times (mimic dice roll)
//        let waitTime : Double = 1
//        for _ in 1 ... 4 {
//            updateDiceImages()
//            diceImageView2.setNeedsDisplay()
//            diceImageView1.setNeedsDisplay()
//            sleep(UInt32(waitTime))
//            print("rolling")
//        }
//        print("------")
//
//    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
//        rollDice()
        updateDiceImages()
    }
}

