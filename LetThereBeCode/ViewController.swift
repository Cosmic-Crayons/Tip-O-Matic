//
//  ViewController.swift
//  LetThereBeCode
//
//  Created by EatMoreOranges on 11/2/19.
//  Copyright © 2019 EatMoreOranges. All rights reserved.
//

import UIKit

//Goal: Make an app that calculates bill total including tip
//How:
    // 1. Design the UI
    //      1.1 List what elements you need to make the app function
    //      1.2 Decide where you want your elements on the app screen
    // 2. Connect Views to variables
    //      2.1 control drag the Veiw element from file tree or or app UI
    //      2.2 name the Veiw element
    // 3. Calculate new values
    //      3.1 Tip calculation
    //      3.2 Total calculation
    // 4. Display new values
    //      4.1 Tip amount
    //      4.2 Total Amount
    // 5. Add the extras
    //      5.1 Gesture Recognizer
    //      5.2 Generous Tip Option


class ViewController: UIViewController {
    
    @IBOutlet weak var billLabel: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
        print("praise the Lord saints")
    }
    @IBAction func calculateTip(_ sender: Any) {
    
//     get bill amount
        let bill = Double(billLabel.text!) ?? 0
        
    //get tip and total
        var tipPercentage = [0.15 ,0.20]
        //Let's kick it up a notch with a random number!
        
        tipPercentage.append(Double.random(in: 0.25 ... 1))
        
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        //print(g + Float(tip))
        let total = tip + bill
        
    // update labels
        tipLabel.text = String(format: "$%.2f", tip)
//        totalLabel.text = "$\(total)"
        totalLabel.text = String(format: "$%.2f", total)
    
    }
    
}

