//
//  ViewController.swift
//  random-number-app
//
//  Created by stagiaire on 04/05/2016.
//  Copyright © 2016 Nayed. All rights reserved.
//

import UIKit

class ViewController: UIViewController, GuessDelegate {

    @IBOutlet weak var userNumberLabel: UILabel!
    @IBOutlet weak var appNumberLabel: UILabel!
    @IBOutlet weak var guessBtn: UIButton!
    @IBOutlet weak var playAgainBtn: UIButton!
    
    var secretNumber: Int = 0
    var previousNumber: String = ""
    
    @IBAction func playAgainAction(sender: AnyObject) {
        self.initGame()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.initGame()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func generateNumber() {
        secretNumber = Int(arc4random_uniform(10))
        print("Number to guess : \(secretNumber)")
        return
    }
    
    func initGame() {
        playAgainBtn.hidden = true
        guessBtn.hidden = false
        appNumberLabel.text = ""
        userNumberLabel.text = "New try"
        generateNumber()
    }
    
    func verifyUserInput(controller: GuessViewController, guessNumber: String) {
        userNumberLabel.text = "You entered \(guessNumber)"
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "GuessSegue" {
            let viewController = segue.destinationViewController as! GuessViewController
            viewController.previousNumber = previousNumber
            viewController.delegate = self
        }
    }
}

