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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func LogOutPressed(sender: UIButton) {
        print("Logged Out")
    }
    // Create additional IBActions here.
    @IBAction func ButtonPressed(sender: UIButton) {
        print("Button \(sender.tag) pressed")
    }
    @IBAction func NewGamePressed(sender: UIButton) {
        print("New Game Requested")
    }

}

