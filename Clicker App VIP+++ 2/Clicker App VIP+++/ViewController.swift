//
//  ViewController.swift
//  Clicker App VIP+++
//
//  Created by AYAAN JAIN stu on 13/9/21.
//

import UIKit

class ViewController: UIViewController {
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterLabel.text = "\(counter)"
    
    }
    @IBAction func Click_Button(_ sender: Any) {
        multiplier()
    }
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBAction func screenTap(_ sender: Any) {
        multiplier()
    }
    
    func newClick() {
        counter += 1
        counterLabel.text = "\(counter)"
        if counter >= 30 {
            performSegue(withIdentifier: "showResults", sender: nil)
    }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResults" {
            let destinationViewController = segue.destination as! NewViewController
            destinationViewController.timeTaken = timeTaken
        }
    }
    
    
    
    var multipliant = 1
    func multiplier() {
        counter += 1*multipliant
        counterLabel.text = "\(counter)"
        if counter >= 30 {
            performSegue(withIdentifier: "showResults", sender: nil)
        }
        changeBackground()
    }
    func changeBackground() {
        let backgroundColour = Int.random(in: 0..<4)
        if backgroundColour == 1{
            self.view.backgroundColor = UIColor.systemGreen
        }
        else if backgroundColour == 2{
            self.view.backgroundColor = UIColor.systemGreen
        }
        else if backgroundColour == 2{
            self.view.backgroundColor = UIColor.systemGreen
        }
        else if backgroundColour == 0{
            self.view.backgroundColor = UIColor.systemPink
        }
        else {
            self.view.backgroundColor = UIColor.white
        }
    }
    var timeTaken = 0.0
    var timer = 0.0
    override func viewDidAppear(_ animated: Bool) {
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (_) in
           self.timeTaken += 0.1
           self.timerLabel.text = "\(self.timeTaken)s"
        }
    }
    @IBOutlet weak var timerLabel: UILabel!
   
    func prepare2(for segue: UIStoryboardSegue, sender: Any?) {
         if segue.identifier == "shopScreen" {
             let destinationViewController = segue.destination as! ShopViewController
         }
    }
    @IBAction func openShop(_ sender: Any) {
        performSegue(withIdentifier: "shopScreen", sender: nil)
    }

}
