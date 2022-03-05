//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by Анастасия Чечелева on 01.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        greetingLabel.isHidden = true
        greetingButton.layer.cornerRadius = 10
    }

    @IBAction func greetingButtonPressed() {
        greetingLabel.isHidden.toggle()
        greetingButton.setTitle(
            greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting",
            for: .normal)
    
        if greetingLabel.isHidden {
            greetingButton.setTitle("Show Greeting", for: .normal)
        } else {
            greetingButton.setTitle("Hide", for: .normal)
        }
  
    }
}

