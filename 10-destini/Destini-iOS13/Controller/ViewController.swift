//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var story = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        story.updateStory(choice: sender.currentTitle!)
        updateUi()
    }
    

    func updateUi() {
        storyLabel.text = story.getTitle()
        choice1Button.setTitle(story.getChoice1(), for: .normal)
        choice2Button.setTitle(story.getChoice2(), for: .normal)
    }
}

