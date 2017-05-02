//
//  ViewController.swift
//  animalSounds
//
//  Created by Alisher Abdukarimov on 4/28/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let meow = SimpleSound(named: "meow")
    let cow = SimpleSound(named: "moo")
    let dog = SimpleSound(named: "woof")
    
    @IBOutlet weak var animalSoundLabel: UILabel!
    
    @IBAction func catSound(_ sender: Any) {
        animalSoundLabel.text = "Meow!"
        meow.play()
    }
    
    @IBAction func dogSound(_ sender: Any) {
        animalSoundLabel.text = "Woof!"
        dog.play()

    }
    
    
    @IBAction func cowSound(_ sender: Any) {
        animalSoundLabel.text = "Moo!"
        cow.play()

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

   


}

