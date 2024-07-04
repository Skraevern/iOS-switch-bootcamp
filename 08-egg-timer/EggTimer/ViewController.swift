//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
var player: AVAudioPlayer!

class ViewController: UIViewController {
    
    let eggTimes = [
        "Soft": 10, // 5 min == 300
        "Medium": 420, // 7 min == 420
        "Hard": 720, // 12 min == 720
    ]
    var secondsPast = 0
    var totalTime = 0
    var secondsRemaining = 0
    var hardness = ""
    var timer = Timer()
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        resetTimer()
        hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        secondsRemaining = totalTime
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        updateTitleLabel()
    }
    @objc func updateTimer() {
        if self.secondsPast <= self.totalTime {
            let percentageRemaining = Float(self.secondsPast) / Float(self.eggTimes[hardness]!)
            self.secondsPast += 1
            self.secondsRemaining -= 1
            self.progressBar.progress = percentageRemaining
            updateTitleLabel()
        } else {
            updateTitleLabel()
            self.timer.invalidate()
            playAlarm()
        }
    }
    @objc func updateTitleLabel() {
        if self.secondsPast <= self.totalTime {
            let minutes = self.secondsRemaining / 60
            let seconds = self.secondsRemaining % 60
            let timerString = String(format: "%02d:%02d", minutes, seconds)
            titleLabel.text = "\(hardness)\n\n\(timerString)"
        } else {titleLabel.text = "DONE!"}
    }
    @objc func playAlarm() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    @objc func resetTimer() {
        timer.invalidate()
        progressBar.progress = 0.0
        secondsPast = 0
        secondsRemaining = 0
    }
}
