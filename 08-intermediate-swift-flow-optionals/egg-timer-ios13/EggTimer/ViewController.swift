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
    var timerActive = false
    var secondsPast = 0
    var totalTime = 0
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        
        if timerActive {
            secondsPast = totalTime
        }
        else {
            timerActive = true

            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
                if self.secondsPast <= self.totalTime {
                    let percentageRemaining = Float(self.secondsPast) / Float(self.eggTimes[hardness]!)
                    print(percentageRemaining)
                    self.progressBar.progress = percentageRemaining
                    
                    self.secondsPast += 1
                    
                } else {
                    print("Countdown finished")
                    self.timerActive = false
                    Timer.invalidate()
                }
            }
        }
    }
}
