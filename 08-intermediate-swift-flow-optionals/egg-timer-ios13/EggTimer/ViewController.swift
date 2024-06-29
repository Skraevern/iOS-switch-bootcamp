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
    var timer = Timer()
    var secondsRemaining = 0
    var secondsPast = 0
    var totalTime = 0
    var hardness = ""
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        secondsRemaining = totalTime
        
        progressBar.progress = 0.0
        secondsPast = 0
        updateTitleLabel(title: hardness)
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target:self, selector: #selector(updateTimer), userInfo:nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if self.secondsPast < self.totalTime {
            self.secondsPast += 1
            self.secondsRemaining -= 1
            self.progressBar.progress = Float(self.secondsPast) / Float(self.totalTime)
            updateTitleLabel(title: self.hardness)
        } else {
            timer.invalidate()
            updateTitleLabel(title: "DONE!")
        }
    }
    @objc func updateTitleLabel(title: String) {
        let minutes = self.secondsRemaining / 60
        let seconds = self.secondsRemaining % 60

        let timeString = String(format: "%02d:%02d", minutes, seconds)
        titleLabel.text = "\(title)\n\n\(timeString)"
    }
}
