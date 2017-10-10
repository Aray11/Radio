//
//  ViewController.swift
//  Radio
//
//  Created by SALIM on 9/25/17.
//  Copyright © 2017 ARAY. All rights reserved.
//

import UIKit
import AVKit
import MediaPlayer

class ViewController: UIViewController {
    @IBOutlet weak var lblButton: UIButton!
    @IBOutlet weak var lblPlayPause: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btnPlay(_ sender: Any) {
        toogleButtonRadio()
    }
    
    func toogleButtonRadio() {
        if RadioFuntion.sharedInstance.currentPlaying() {
            pauseRadio()
        } else {
            playRadio()
        }
    }
    func pauseRadio() {
        RadioFuntion.sharedInstance.pause()
        lblPlayPause.text = "Play Radio"
        lblButton.setImage(UIImage(named: "pause.png"), for: .normal)
    }
    
    func playRadio() {
        RadioFuntion.sharedInstance.play()
        lblPlayPause.text = "Pause Radio"
        lblButton.setImage(UIImage(named: "play.png"), for: .normal)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

