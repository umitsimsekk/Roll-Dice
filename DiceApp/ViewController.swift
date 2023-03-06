//
//  ViewController.swift
//  DiceApp
//
//  Created by Ümit Şimşek on 5.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgSecond: UIImageView!
    @IBOutlet weak var imgFirst: UIImageView!
    
    var diceImgArray : Array<UIImage> = [
        UIImage(named: "dice1")!,
        UIImage(named: "dice2")!,
        UIImage(named: "dice3")!,
        UIImage(named: "dice4")!,
        UIImage(named: "dice5")!,
        UIImage(named: "dice6")!,
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollDiceClicked(_ sender: Any) {
        let rndmNumberFirst =  arc4random_uniform(6)
        let rndmNumberSecond =  arc4random_uniform(6)
        
        imgFirst.image = diceImgArray[Int(rndmNumberFirst)]
        imgSecond.image = diceImgArray[Int(rndmNumberSecond)]

    }
    
}

