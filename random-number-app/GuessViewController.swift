//
//  GuessViewController.swift
//  random-number-app
//
//  Created by stagiaire on 04/05/2016.
//  Copyright © 2016 Nayed. All rights reserved.
//

import UIKit

protocol GuessDelegate {
    func verifyUserInput(controller: GuessViewController, guessNumber: String)
}

class GuessViewController: UIViewController, UITextFieldDelegate {
    
    var delegate: GuessDelegate? = nil
    var previousNumber: String = ""
    
    @IBOutlet weak var verifyBtn: UIButton!    
    @IBOutlet weak var numTextField: UITextField!
    
    @IBAction func verifyBtnAction(sender: AnyObject) {
        if delegate != nil {
            delegate?.verifyUserInput(self, guessNumber: numTextField.text!)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if !previousNumber.isEmpty {
            numTextField.text = previousNumber
        }
        numTextField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
