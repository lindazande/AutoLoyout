////  ViewController.swift
//  AutoLoyout
//
//  Created by linda.zande on 24/07/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var styleOutletCollection: [UIButton]!
    @IBOutlet weak var buttonDoutlet: UIButton!
    @IBOutlet weak var buttonEOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleOutletCollection.forEach { button in
            button.layer.cornerRadius = 10
            button.layer.borderColor = UIColor.blue.cgColor
            button.layer.borderWidth = 2
        }
    }

    @IBAction func refreshItemTapped(_ sender: Any) {
        navigationItem.title = "Auto Layout"
        self.buttonDoutlet.isHidden = false
    }
    
    
       @IBAction func buttonATapped(_ sender: Any) {
        navigationItem.title = "Button A"
        self.buttonDoutlet.isHidden = true
        self.buttonEOutlet.setImage(UIImage(systemName: "trash"), for: .normal)
    }
}


