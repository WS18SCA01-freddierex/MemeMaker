//
//  ViewController.swift
//  MemeMaker
//
//  Created by FREDERICK MARTIN on 11/12/18.
//  Copyright © 2018 Fredrex Enterprises. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    
    var topChoices = [CaptionChoice]()
    var bottomChoices = [CaptionChoice]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bamChoice = CaptionChoice(emoji:"💥",caption:"BAM")
        let powChoice = CaptionChoice(emoji: "⚡️", caption: "POW!")
        let dingChoice = CaptionChoice(emoji: "🔔", caption: "DING!")
       
        topChoices = [bamChoice, powChoice, dingChoice]
        
        topCaptionSegmentedControl.removeAllSegments()
        
        for choice in topChoices{
            
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
            
        }
        
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        
        let brokenNose = CaptionChoice(emoji: "👃", caption: "Broken Nose!")
        
        let blackEye = CaptionChoice(emoji: "👁", caption: "Black Eye!")
        
        let toothLost = CaptionChoice(emoji: "🦷", caption: "Lost of tooth")
        
        bottomChoices = [brokenNose, blackEye, toothLost]
        
        bottomCaptionSegmentedControl.removeAllSegments()
        
        for choice in bottomChoices{
            
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
            
        }
        
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
        
        updateLabels()
    }
    
    
    func updateLabels(){
        
        let topIndex = topCaptionSegmentedControl.selectedSegmentIndex
        let bottommIndex = bottomCaptionSegmentedControl.selectedSegmentIndex
        
        let topChoice = topChoices[topIndex]
        let bottomChoice = bottomChoices[bottommIndex]
        
        topCaptionLabel.text = topChoice.caption
        bottomCaptionLabel.text = bottomChoice.caption
    }


    @IBAction func choiceSelected(_ sender: Any) {
        
        
        updateLabels()
        
        
    }
    
    
    
}

