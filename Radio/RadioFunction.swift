//
//  RadioFunction.swift
//  Radio
//
//  Created by SALIM on 9/25/17.
//  Copyright © 2017 ARAY. All rights reserved.
//

import Foundation
import AVFoundation

class RadioFuntion {
    static let sharedInstance = RadioFuntion()
    
    private var isPlaying = false
    
    private var player = AVPlayer(url: (NSURL(fileURLWithPath: "http://162.243.130.87/") as URL))
    
    func play() {
        player.play()
        isPlaying = true
    }
    func pause() {
        player.pause()
        isPlaying = true
    }
    
    func toogleButton() {
        if isPlaying {
            pause()
        } else {
            play()
        }
    }

    func currentPlaying() -> Bool {
        return isPlaying
    }

}
