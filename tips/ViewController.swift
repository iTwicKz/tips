//
//  ViewController.swift
//  tips
//
//  Created by Takashi Wickes on 12/8/15.
//  Copyright © 2015 Takashi Wickes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var sliderValue:Float = 0.0

    @IBOutlet weak var tipLabel: UILabel!

    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!

    @IBOutlet weak var tipSlider: UISlider!
    
    
    @IBOutlet weak var tipPercentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func configureDefaultSlider() {
        tipSlider.minimumValue = 0.05
        tipSlider.maximumValue = 0.4
       
        tipSlider.continuous = true
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        print("User editing bill")
        
        if(sender.tag == 1){
        sliderValue = sender.value
        print("\(sliderValue)")
        tipPercentLabel.text = String(format: "%.0f%", sliderValue*100)
        configureDefaultSlider()
        }
        
//        sliderValue = Double(tipSlider.value)
        //print("\(sliderValue)")
        
        var tipArray = [0.18, 0.2, 0.22]
        var tipPercentage = tipArray[tipControl.selectedSegmentIndex]
        
        var billAmount = 0.0
        if(billField.text == ""){
            billAmount = 0.0    }
        else{
            billAmount = Double(billField.text!)!
        }
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func tipSliderMove(sender: AnyObject) {
        sliderValue = sender.value
        print("\(sliderValue)")
        tipPercentLabel.text = String(format: "%.0f%", sliderValue*100)
        configureDefaultSlider()
    }
    

}

