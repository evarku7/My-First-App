//
//  SettingsViewController.swift
//  Tipper
//
//  Created by Alexander Payne on 12/16/15.
//  Copyright © 2015 Jumper Legend Studios. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    @IBOutlet weak var satisfactionShowSwitch: UISwitch!
    @IBOutlet weak var hotnessShowSwitch: UISwitch!
    @IBOutlet weak var roundingShowSwitch: UISwitch!
    @IBOutlet weak var backgroundColorControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Settings"
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(0.15, forKey: "default_tip_percentage")
        defaults.synchronize()
        
        
//        defaults.setValue(satisfactionShowSwitch, forKey: "default_view_satisfaction")
//        defaults.setValue(hotnessShowSwitch, forKey: "default_view_hotness")
//        defaults.setValue(roundingShowSwitch, forKey: "default_view_rounding")
        
        
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
