//
//  ShopViewController.swift
//  Clicker App VIP+++
//
//  Created by AYAAN JAIN stu on 13/9/21.
//

import UIKit

class ShopViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    var multipliant = 1
    
    @IBAction func doubleMultiplier(_ sender: Any) {
        var multipliant = 2
        performSegue(withIdentifier: "ViewController", sender: nil)
    }
    
    @IBAction func quadrupleMultiplier(_ sender: Any) {
        var multipliant = 4
        performSegue(withIdentifier: "ViewController", sender: nil)
    }
    
    func prepare3(for segue: UIStoryboardSegue, sender: Any?) {
         if segue.identifier == "ViewController" {
             let destinationViewController = segue.destination as! ViewController
         }
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
