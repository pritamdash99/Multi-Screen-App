//
//  VoterViewController.swift
//  MultiScreenApp
//
//  Created by Pritam Dash on 06/06/22.
//

import Foundation
import UIKit
class VoterViewController : UIViewController {
    @IBOutlet var nameLabel : UILabel?
    @IBOutlet var ageLabel : UILabel?
    @IBOutlet var yesNoLabel : UILabel?
    @IBOutlet var isVoterButton : UIButton?
    @IBOutlet var backButton : UIButton?
    
    var name : String = ""
    var age : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("I am second controller", name, age)
            nameLabel!.text = "Name : \(name)"
            ageLabel!.text = "Age : \(String(age))"
    }
    
    @IBAction func isVoterClicked() -> Void {
        if age >= 18 {
            yesNoLabel!.text = "YES"
        }else
        {
            yesNoLabel!.text = "NO"
        }
    }
    
    @IBAction func backButtonPressed() ->Void {
        self.dismiss(animated: true, completion: nil)
    }
}
