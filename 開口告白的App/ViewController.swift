//
//  ViewController.swift
//  開口告白的App
//
//  Created by Aries on 2018/5/4.
//  Copyright © 2018年 Aries. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var Text: UITextField!
    @IBAction func Buttonpress(_ sender: Any) {
        
        let speechUtterance = AVSpeechUtterance(string:Text.text!)
        speechUtterance.voice =
        AVSpeechSynthesisVoice(language: "zh-TW")
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(speechUtterance)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

