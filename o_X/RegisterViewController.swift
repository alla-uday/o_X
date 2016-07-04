//
//  RegisterViewController.swift
//  o_X
//
//  Created by Uday Alla on 6/30/16.
//  Copyright © 2016 iX. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var EmailField: UITextField!
    @IBOutlet weak var PasswordField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var LoginAction: UIButton!

    @IBAction func LoginFieldAction(sender: UIButton) {
        UserController.sharedInstance.register(EmailField.text!, password: PasswordField.text!) { (user: User?, text: String?) -> Void in
            if(user == nil){
                let alert = UIAlertController(title: "Login Failed", message:"", preferredStyle: UIAlertControllerStyle.Alert)
                let alertAction = UIAlertAction(title: "Dismiss", style: .Default, handler:{(action) in
                })
                alert.addAction(alertAction)
                self.presentViewController(alert, animated:true, completion: nil)
                
            }
            else {
                let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
                let b = mainStoryBoard.instantiateInitialViewController()
                let application = UIApplication.sharedApplication()
                let window = application.keyWindow
                window?.rootViewController = b
            }
        }
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
