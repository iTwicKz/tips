//
//  ViewController.swift
//  tips
//
//  Created by Takashi Wickes on 12/8/15.
//  Copyright © 2015 Takashi Wickes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var sliderValue:Float = 0.2
    
    var defaultPercent:Float  = 0.2
    
    var opened = true

    @IBOutlet weak var tipLabel: UILabel!

    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!

    @IBOutlet weak var tipSlider: UISlider!
    
    @IBOutlet weak var controlPanel: UIView!
    
    @IBOutlet weak var tipPercentLabel: UILabel!
    
    @IBOutlet weak var segControl: UISegmentedControl!
    
    @IBOutlet weak var TwoPrice: UILabel!
    @IBOutlet weak var ThreeOrice: UILabel!
    @IBOutlet weak var FourPrice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
        self.controlPanel.alpha = 0
        //self.billField.center.y = 0
        self.controlPanel.center.y = -100
        
        let defaults = NSUserDefaults.standardUserDefaults()
//        defaults.setInteger(10, forKey: "Minimum")
//        defaults.setInteger(40, forKey: "Maximum")
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        TwoPrice.text = "$0.00"
        ThreeOrice.text = "$0.00"
        FourPrice.text = "$0.00"
        defaultPercent = Float(defaults.integerForKey("Default"))/100.0
        tipSlider.value = defaultPercent
        sliderValue = defaultPercent
        tipPercentLabel.text = String(format: "%.0f %@", defaultPercent*100, "%")
        tipSlider.tag = 1
        billField.tag = 2
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
        
        let defaults = NSUserDefaults.standardUserDefaults()
        if(defaultPercent != Float(defaults.integerForKey("Default"))/100.0){
        
            defaultPercent = Float(defaults.integerForKey("Default"))/100.0
            tipSlider.value = defaultPercent
            tipPercentLabel.text = String(format: "%.0f %@", defaultPercent*100, "%")
        }
   
        tipSlider.minimumValue = Float(defaults.integerForKey("Minimum"))/100.0
        tipSlider.maximumValue = Float(defaults.integerForKey("Maximum"))/100.0
        tipSlider.tag = 1
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func configureDefaultSlider() {
        let defaults = NSUserDefaults.standardUserDefaults()
        tipSlider.minimumValue = Float(defaults.integerForKey("Minimum"))/100.0
        tipSlider.maximumValue = Float(defaults.integerForKey("Maximum"))/100.0
       
        tipSlider.continuous = true

    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        print("User editing bill")
        
//        if(sender.tag == 2){
//            var tipArray = [18, 2, 22]
//            sliderValue = Float(tipArray[tipControl.selectedSegmentIndex])
//            print(sliderValue)
//        }
        if(sender.tag == 2){
        print("Yo!")
        self.controlPanel.alpha = 1
        UIView.animateWithDuration(0.4, animations: {
            // This causes first view to fade in and second view to fade out
            
            if(self.opened){
                self.controlPanel.center.y = 30
                self.billField.center = CGPointMake(self.billField.center.x, self.billField.center.y - 100)
            }
            self.opened = false
            //self.secondView.alpha = 0
        })
        }
        
        if(sender.tag == 1){
        sliderValue = sender.value
        sliderValue = round(sender.value*100)/100
        print("\(sliderValue)")
        tipPercentLabel.text = String(format: "%.0f %@", sliderValue*100, "%")
        configureDefaultSlider()
        }
        

        
//        sliderValue = Double(tipSlider.value)
        //print("\(sliderValue)")
        if(opened){
            sliderValue = 0.2
        }
        
        var tipPercentage = Double(sliderValue)
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
        TwoPrice.text = String(format: "$%.2f", total/2)
        ThreeOrice.text = String(format: "$%.2f", total/3)
        FourPrice.text = String(format: "$%.2f", total/4)
        
    }
    
    @IBAction func offKeyTap(sender: AnyObject) {
         print("HEY HEY HEY")
    }
    
    @IBAction func onTap(sender: AnyObject) {
        print("HEY HEY HEY")
        view.endEditing(true)
    }
    
//    @IBAction func tipSliderMove(sender: AnyObject) {
//        sliderValue = sender.value
//        print("\(sliderValue)")
//        tipPercentLabel.text = String(format: "%.0f%", sliderValue*100)
//        configureDefaultSlider()
//    }
//    
//    @IBAction func billPressed(sender: AnyObject) {
//        self.controlPanel.alpha = 0
//        //self.secondView.alpha = 1
//        UIView.animateWithDuration(0.4, animations: {
//            // This causes first view to fade in and second view to fade out
//            self.controlPanel.alpha = 1
//            //self.secondView.alpha = 0
//        })
//    }
    
    @IBAction func billEdited(sender: AnyObject) {

    }
    
    @IBAction func segmentSelected(sender: AnyObject) {
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        billField.endEditing(true)
    }
    
    
//    
//    @IBAction func touchUpInside(sender: AnyObject) {
//        print("HEEEEY")
//    }
//    
//    @IBAction func billPricePressed(sender: AnyObject) {
//        print("Bill pressed")
//        self.controlPanel.alpha = 0
//        //self.secondView.alpha = 1
//        UIView.animateWithDuration(0.4, animations: {
//            self.controlPanel.center.y = 100
//            // This causes first view to fade in and second view to fade out
//            self.controlPanel.alpha = 1
//            //self.secondView.alpha = 0
//        })
//    }

}

