//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation


class Test {
    
    var player: AVAudioPlayer!
    

    
}

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    func playAudio(note: String) {
        
        let url = Bundle.main.url(forResource: note, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        // C
        playAudio(note: "C")
    }
    @IBAction func dButton(_ sender: UIButton) {
        playAudio(note: "D")
    }
    @IBAction func eButton(_ sender: UIButton) {
        playAudio(note: "E")
    }
    @IBAction func fButton(_ sender: UIButton) {
        playAudio(note: "F")
    }
    @IBAction func gButton(_ sender: UIButton) {
        playAudio(note: "G")
    }
    @IBAction func aButton(_ sender: UIButton) {
        playAudio(note: "A")
    }
    @IBAction func bButton(_ sender: UIButton) {
        playAudio(note: "B")
    }
}

