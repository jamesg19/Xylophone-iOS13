//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    var player: AVAudioPlayer?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Welcome...")
    }

    
    
    @IBAction func cButton(_ sender: UIButton) {
        playSound(nameSound:"C")
    }
    
    @IBAction func dButton(_ sender: UIButton) {
        print("dButton\n")
        playSound(nameSound:"D")
    }
    @IBAction func eButton(_ sender: UIButton) {
        playSound(nameSound:"E")
    }
    
    @IBAction func fButton(_ sender: UIButton) {
        playSound(nameSound:"F")
    }
    @IBAction func gButton(_ sender: UIButton) {
        playSound(nameSound:"G")
    }
    
    @IBAction func aButton(_ sender: UIButton) {
        playSound(nameSound:"A")
    }
    
    @IBAction func bButton(_ sender: UIButton) {
        playSound(nameSound:"B")
    }
    
    func playSound(nameSound:String) -> Void{ // need to declare local
        print(nameSound)
        //self.player?.stop()
        let url = Bundle.main.url(forResource: nameSound, withExtension: "wav")
        self.player = try! AVAudioPlayer(contentsOf: url!)

        self.player!.prepareToPlay()
        self.player!.play()


    }
}

