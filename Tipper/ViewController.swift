//
//  ViewController.swift
//  Tipper
//
//  Created by Alexander Payne on 12/16/15.
//  Copyright © 2015 Jumper Legend Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var satisfactionSlider: UISlider!
    @IBOutlet weak var hotnessSlider: UISlider!
    @IBOutlet weak var roundoffSwitch: UISwitch!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Tipper"
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
             
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChange(sender: AnyObject) {
        
        var tipPercentages = [0.10, 0.15, 0.20]
        
        let selectedTipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        let billAmount = NSString(string: billField.text!).doubleValue
        
        var tipAmount = (billAmount * selectedTipPercentage) + Double(satisfactionSlider.value) + Double(hotnessSlider.value)
        
        var totalAmount = billAmount + tipAmount
        
        let get_decimal_places:Double = pow(10.0, 2.0)
        
        var get_change:Double = round((totalAmount % 1.0) * get_decimal_places)/get_decimal_places

        
        if(roundoffSwitch.on && get_change != 0.00)
        {
            
            get_change = 1.00 - get_change
            
            
            tipAmount = tipAmount + get_change

            
            totalAmount = billAmount + tipAmount
            
        }
        else
        {
            // totalAmount does not change
        }
      
        
        tipLabel.text = String(format: "$%.2f", tipAmount)
        totalLabel.text = String(format: "$%.2f", totalAmount)
    }
   
    
    @IBAction func hotnessSliderChanged(sender: UISlider) {
     //   let hotness = Double(sender.value)
    }
    
    
    @IBAction func satisfactionSliderChanged(sender: UISlider) {
      //  let satisfaction = Double(sender.value)
    }
    

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
        
        
        
        
}









