//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = [
        "Soft": 10, // 5 min == 300
        "Medium": 420, // 7 min == 420
        "Hard": 720, // 12 min == 720
    ]
    var secondsRemaining: Int? = nil
    var timerActive = false
    var percentageRemaining: Float? = nil
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        secondsRemaining = eggTimes[hardness]!
        
        if timerActive {
            secondsRemaining = 0
        }
        else {
            timerActive = true

            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
                if self.secondsRemaining! > 0 {
                    print ("\(String(describing: self.secondsRemaining!)) seconds")
                    self.secondsRemaining! -= 1
                    
                    let percentageRemaining = Float(self.secondsRemaining!) / Float(self.eggTimes[hardness]!)
                    print(percentageRemaining)
                    self.progressBar.progress = 1.000000000000 - percentageRemaining
                    
                } else {
                    print("Countdown finished")
                    self.timerActive = false
                    Timer.invalidate()
                }
            }
        }
    }
}
