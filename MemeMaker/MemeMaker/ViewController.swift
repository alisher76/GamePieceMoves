//
//  ViewController.swift
//  MemeMaker
//
//  Created by Alisher Abdukarimov on 4/30/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let topChoices = [
        CaptionOption(emoji: "🕶", caption: "You know what? I am cool!"),
        CaptionOption(emoji: "💥", caption: "Let the FireWorks go!"),
        CaptionOption(emoji: "💕", caption: "Can stop loving u SWIFT!")
    ]
    
    let bottomChoices = [
        CaptionOption(emoji: "🐱", caption: "Cats are like women lol"),
        CaptionOption(emoji: "🐕", caption: "Dogs are sweet friends of people"),
        CaptionOption(emoji: "🐒", caption: "Monkeys are like people!")
    ]
    
    
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var topCaptionSegmentControl: UISegmentedControl!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topCaptionSegmentControl.removeAllSegments()
        for choice in topChoices {
            topCaptionSegmentControl.insertSegment(withTitle: choice.emoji,
                                                   at: topChoices.count,
                                                   animated: false)
        }
        topCaptionSegmentControl.selectedSegmentIndex = 0
        
        bottomCaptionSegmentedControl.removeAllSegments()
        for bottomChoice in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: bottomChoice.emoji,
                                                        at: bottomChoices.count,
                                                        animated: false)
        }
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
        updateLabel()
    }
    
    @IBAction func segmentedControl(_ sender: Any) {
        updateLabel()
    }
    
    func updateLabel() {
        
        let topSelectedIndexNum = topCaptionSegmentControl.selectedSegmentIndex
        let bottomSelectedIndexNum = bottomCaptionSegmentedControl.selectedSegmentIndex
        
        topCaptionLabel.text = topChoices[topSelectedIndexNum].caption
        bottomCaptionLabel.text = bottomChoices[bottomSelectedIndexNum].caption
        
    }
    
    
}

