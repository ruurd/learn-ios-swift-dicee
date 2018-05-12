//
//  ViewController.swift
//  Dicee
//
//  Created by Ruurd Pels on 12-05-2018.
//  Copyright © 2018 Bureau Pels. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let diceImageNames = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    var leftRandomIndex: Int = 0
    var riteRandomIndex: Int = 0

    @IBOutlet weak var leftDiceImageView: UIImageView!
    @IBOutlet weak var riteDiceImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtomPressed(_ sender: UIButton) {
        updateDiceImages()
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }

    func updateDiceImages() {
        leftRandomIndex = Int(arc4random_uniform(6))
        riteRandomIndex = Int(arc4random_uniform(6))

        leftDiceImageView.image = UIImage(named: diceImageNames[leftRandomIndex])
        riteDiceImageView.image = UIImage(named: diceImageNames[riteRandomIndex])
    }
}

