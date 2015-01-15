//
//  ViewController.swift
//  PhaseThrow
//
//  Created by Priya on 1/12/15.
//  Copyright (c) 2015 Priya. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    var nounDict : NounDictionary!
    
    @IBOutlet var nextWordLabel: UILabel!
    @IBAction func nextWordButton(sender: AnyObject) {
        var word: String? = nounDict.randomWord()
        if word != nil {
            self.nextWordLabel.text = word!
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.nounDict = NounDictionary()
        self.nextWordLabel.text = ""
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

