//
//  BoardViewController.swift
//  o_X
//

import UIKit

class BoardViewController: UIViewController {

    @IBOutlet weak var newGameButton: UIButton!
    // Create additional IBOutlets here.
    
    @IBOutlet weak var LogoutButton: UIButton!
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button5: UIButton!
    @IBOutlet weak var Button6: UIButton!
    @IBOutlet weak var Button7: UIButton!
    @IBOutlet weak var Button8: UIButton!
    @IBOutlet weak var Button9: UIButton!
    @IBOutlet weak var Status: UILabel!
    //var gameObject=OXGame()
    @IBAction func LogOutButtonPressed(sender: UIButton) {
        let mainStoryBoard = UIStoryboard(name: "Onboarding", bundle: nil)
        let b = mainStoryBoard.instantiateInitialViewController()
        let application = UIApplication.sharedApplication()
        let window = application.keyWindow
        window?.rootViewController = b
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func LogOutPressed(sender: UIButton) {
        print("Logged Out")
        
    }
    // Create additional IBActions here.
    @IBAction func ButtonPressed(sender: UIButton) {
        let x: CellType = OXGameController.sharedInstance.getCurrentGame().playMoves(sender.tag-1)
        sender.setTitle(String(x), forState: .Normal)
        print("Button \(x) pressed")
        sender.enabled=false
        OXGameController.sharedInstance.getCurrentGame().countTurn++
        if(OXGameController.sharedInstance.getCurrentGame().state() == .Won){
            //Status.text = "\(x) Won"
            let alert = UIAlertController(title: "Game Over", message:"\(x) Wins!", preferredStyle: UIAlertControllerStyle.Alert)
            let alertAction = UIAlertAction(title: "New Game", style: .Default, handler:{(action) in
                //self.view.backgroundColor = UIColor.redColor()
                OXGameController.sharedInstance.getCurrentGame().reset()
                self.Button1.setTitle("", forState: .Normal)
                self.Button2.setTitle("", forState: .Normal)
                self.Button3.setTitle("", forState: .Normal)
                self.Button4.setTitle("", forState: .Normal)
                self.Button5.setTitle("", forState: .Normal)
                self.Button6.setTitle("", forState: .Normal)
                self.Button7.setTitle("", forState: .Normal)
                self.Button8.setTitle("", forState: .Normal)
                self.Button9.setTitle("", forState: .Normal)
                self.Button1.enabled = true
                self.Button2.enabled = true
                self.Button3.enabled = true
                self.Button4.enabled = true
                self.Button5.enabled = true
                self.Button6.enabled = true
                self.Button7.enabled = true
                self.Button8.enabled = true
                self.Button9.enabled = true
                
                self.Status.text=""
                
            })
            let alertAction2 = UIAlertAction(title: "Exit", style: .Default, handler:{(action) in
                self.Button1.enabled = false
                self.Button2.enabled = false
                self.Button3.enabled = false
                self.Button4.enabled = false
                self.Button5.enabled = false
                self.Button6.enabled = false
                self.Button7.enabled = false
                self.Button8.enabled = false
                self.Button9.enabled = false
            })
            alert.addAction(alertAction)
            alert.addAction(alertAction2)
            self.presentViewController(alert, animated:true, completion: nil)
            OXGameController.sharedInstance.getCurrentGame().reset()
            /**Button1.setTitle("", forState: .Normal)
            Button2.setTitle("", forState: .Normal)
            Button3.setTitle("", forState: .Normal)
            Button4.setTitle("", forState: .Normal)
            Button5.setTitle("", forState: .Normal)
            Button6.setTitle("", forState: .Normal)
            Button7.setTitle("", forState: .Normal)
            Button8.setTitle("", forState: .Normal)
            Button9.setTitle("", forState: .Normal)*/
            /*Button1.enabled = false
            Button2.enabled = false
            Button3.enabled = false
            Button4.enabled = false
            Button5.enabled = false
            Button6.enabled = false
            Button7.enabled = false
            Button8.enabled = false
            Button9.enabled = false*/

            
        }
            
        else if (OXGameController.sharedInstance.getCurrentGame().state() == .Tie){
            //Status.text="Tie"
            let alert = UIAlertController(title: "Game Over", message:"Tie", preferredStyle: UIAlertControllerStyle.Alert)
            let alertAction = UIAlertAction(title: "New Game", style: .Default, handler:{(action) in
                //self.view.backgroundColor = UIColor.redColor()
                OXGameController.sharedInstance.getCurrentGame().reset()
                self.Button1.setTitle("", forState: .Normal)
                self.Button2.setTitle("", forState: .Normal)
                self.Button3.setTitle("", forState: .Normal)
                self.Button4.setTitle("", forState: .Normal)
                self.Button5.setTitle("", forState: .Normal)
                self.Button6.setTitle("", forState: .Normal)
                self.Button7.setTitle("", forState: .Normal)
                self.Button8.setTitle("", forState: .Normal)
                self.Button9.setTitle("", forState: .Normal)
                self.Button1.enabled = true
                self.Button2.enabled = true
                self.Button3.enabled = true
                self.Button4.enabled = true
                self.Button5.enabled = true
                self.Button6.enabled = true
                self.Button7.enabled = true
                self.Button8.enabled = true
                self.Button9.enabled = true
                
                self.Status.text=""
                
            })
            let alertAction2 = UIAlertAction(title: "Exit", style: .Default, handler:{(action) in
                self.Button1.enabled = false
                self.Button2.enabled = false
                self.Button3.enabled = false
                self.Button4.enabled = false
                self.Button5.enabled = false
                self.Button6.enabled = false
                self.Button7.enabled = false
                self.Button8.enabled = false
                self.Button9.enabled = false
            })
            alert.addAction(alertAction)
            alert.addAction(alertAction2)

            self.presentViewController(alert, animated:true, completion: nil)
            OXGameController.sharedInstance.getCurrentGame().reset()
            /*Button1.setTitle("", forState: .Normal)
            Button2.setTitle("", forState: .Normal)
            Button3.setTitle("", forState: .Normal)
            Button4.setTitle("", forState: .Normal)
            Button5.setTitle("", forState: .Normal)
            Button6.setTitle("", forState: .Normal)
            Button7.setTitle("", forState: .Normal)
            Button8.setTitle("", forState: .Normal)
            Button9.setTitle("", forState: .Normal)*/
            /*Button1.enabled = false
            Button2.enabled = false
            Button3.enabled = false
            Button4.enabled = false
            Button5.enabled = false
            Button6.enabled = false
            Button7.enabled = false
            Button8.enabled = false
            Button9.enabled = false*/
        }
        else {
            Status.text="\(OXGameController.sharedInstance.getCurrentGame().whoseTurn())'s turn"
        }

    }
    @IBAction func NewGamePressed(sender: UIButton) {
        OXGameController.sharedInstance.getCurrentGame().reset()
        Button1.setTitle("", forState: .Normal)
        Button2.setTitle("", forState: .Normal)
        Button3.setTitle("", forState: .Normal)
        Button4.setTitle("", forState: .Normal)
        Button5.setTitle("", forState: .Normal)
        Button6.setTitle("", forState: .Normal)
        Button7.setTitle("", forState: .Normal)
        Button8.setTitle("", forState: .Normal)
        Button9.setTitle("", forState: .Normal)
        Button1.enabled = true
        Button2.enabled = true
        Button3.enabled = true
        Button4.enabled = true
        Button5.enabled = true
        Button6.enabled = true
        Button7.enabled = true
        Button8.enabled = true
        Button9.enabled = true

        Status.text=""
    }

}

