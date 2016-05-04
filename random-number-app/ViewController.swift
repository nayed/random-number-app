//
//  ViewController.swift
//  random-number-app
//
//  Created by stagiaire on 04/05/2016.
//  Copyright © 2016 Nayed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNumberLabel: UILabel!
    @IBOutlet weak var appNumberLabel: UILabel!
    @IBOutlet weak var guessBtn: UIButton!
    @IBOutlet weak var playAgainBtn: UIButton!
    
    @IBAction func playAgainAction(sender: AnyObject) {
        playAgainBtn.hidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

