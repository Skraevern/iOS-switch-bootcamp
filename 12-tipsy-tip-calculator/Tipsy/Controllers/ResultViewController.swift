//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Kristian Skreosen on 10/07/2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var splitPerPerson = ""
    var tipPrct = ""
    var splitNumPeople = ""

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = splitPerPerson
        settingsLabel.text = "Split between \(splitNumPeople) people, with \(tipPrct) tip."

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalcBtnPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
