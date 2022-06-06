//
//  ViewController.swift
//  MultiScreenApp
//
//  Created by Pritam Dash on 06/06/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameTextField : UITextField?
    @IBOutlet var ageTextField : UITextField?
    @IBOutlet var submitButton : UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitButtonClicked() -> Void {
        
        if nameTextField?.text == nil || ageTextField?.text == nil {
            submitButton?.isEnabled = false
        }
        else{
            submitButton?.isEnabled = true
        }
        
        let strName = nameTextField!.text!
        let age = Int(ageTextField!.text!) ?? 0
        
        //Load Next Screen
        
        // let nextScreen : UIViewController =  self.storyboard!.instantiateViewController(withIdentifier: "VoterViewController")
        //Here instantiateViewController returns a UIViewController object.
        //Hence we created the "nextScreen" of type UIViewController but we have to assign the values of the text field data to the VoterViewController's variable.
        //So we need an object of the VoterViewController type not UIViewController type.
        // So we change the reference type to VoterViewController and add(as! VoterViewController) at the end and tell Xcode that we are sure that the ViewController object we want in return is VoterViewController not UIViewController.
        //Type casting happens at the end.
        
        let nextScreen : VoterViewController =  self.storyboard!.instantiateViewController(withIdentifier: "VoterViewController") as! VoterViewController
        
        //Setting the data in next controller
        nextScreen.name = strName
        nextScreen.age = age
        
        //Showing the data
        //self.present(<#T##viewControllerToPresent: UIViewController##UIViewController#>, animated: <#T##Bool#>, completion: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>)
        self.present(nextScreen, animated: true, completion: nil)
    }
    


}

