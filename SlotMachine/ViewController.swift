//
//  ViewController.swift
//  SlotMachine
//
//  Created by  on 2/19/21 by Ben Brown
//

import UIKit

var slotRoll = [#imageLiteral(resourceName: "coin"), #imageLiteral(resourceName: "cherry"), #imageLiteral(resourceName: "clover"), #imageLiteral(resourceName: "bell"), #imageLiteral(resourceName: "grapes"), #imageLiteral(resourceName: "diamond"), #imageLiteral(resourceName: "lemon"), #imageLiteral(resourceName: "peach"), #imageLiteral(resourceName: "bar"), #imageLiteral(resourceName: "clover"), #imageLiteral(resourceName: "melon"), #imageLiteral(resourceName: "horseshoe"), #imageLiteral(resourceName: "eggplant"), #imageLiteral(resourceName: "apple"), #imageLiteral(resourceName: "heart"), #imageLiteral(resourceName: "question")]

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    @IBOutlet weak var diceImageViewThree: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageViewOne.image = #imageLiteral(resourceName: "question")
        diceImageViewTwo.image = #imageLiteral(resourceName: "question")
        diceImageViewThree.image = #imageLiteral(resourceName: "question")
    }

    @IBAction func rollButtonClicked(_ sender: UIButton) {
        diceImageViewOne.image = slotRoll[Int.random(in: 0...15)]
        diceImageViewTwo.image = slotRoll[Int.random(in: 0...15)]
        diceImageViewThree.image = slotRoll[Int.random(in: 0...15)]
    }
    
}

