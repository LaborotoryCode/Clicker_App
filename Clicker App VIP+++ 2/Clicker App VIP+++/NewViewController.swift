//
//  NewViewController.swift
//  Clicker App VIP+++
//
//  Created by AYAAN JAIN stu on 13/9/21.
//

import UIKit

class NewViewController: UIViewController {
    var timeTaken = 0.0
    
    override func viewDidAppear(_ animated: Bool){
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (_) in
            print("Hello")
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResults" {
            let destinationViewController = segue.destination as! NewViewController
        }
    }
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var cpsLabel: UILabel!

    override func viewDidLoad() {
        // type code here
        timeLabel.text = "You clicked 30 times in \(String(format: "%.2f", timeTaken)) seconds!"
        cpsLabel.text = "Your cps is \(String(format: "%.2f", 30.0/timeTaken))!"
    }

    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

