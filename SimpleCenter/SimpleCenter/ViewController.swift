//
//  ViewController.swift
//  SimpleCenter
//
//  Created by Alisher Abdukarimov on 4/28/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement()
    }

    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    var currentElementIndex = 0
   
    
    @IBOutlet weak var answerLabelView: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func showAnswer(_ sender: Any) {
        answerLabelView.text = elementList[currentElementIndex]
    }
    @IBAction func showNextElement(_ sender: Any) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count {
        currentElementIndex = 0
        }
        updateElement()
    }
    
    func updateElement() {
    answerLabelView.text = "?"
    let elementName = elementList[currentElementIndex]
    let image = UIImage(named: elementName)
    imageView.image = image
    
    }


}

