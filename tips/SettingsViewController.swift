//
//  SettingsViewController.swift
//  tips
//
//  Created by Takashi Wickes on 12/8/15.
//  Copyright © 2015 Takashi Wickes. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

//    @IBOutlet weak var minPercPicker: UIPickerView!
    

    var pickerDataSource = ["5%", "10%", "15%", "20%", "25%", "30%", "35%", "40%", "45%", "50%",]
    
    @IBOutlet weak var minPicker: UIPickerView!
    
    @IBOutlet weak var defaultPicker: UIPickerView!
    
    @IBOutlet weak var maxPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //minPicker = UIPickerView()
       // defaultPicker = UIPickerView()
        minPicker.delegate = self;
        minPicker.dataSource = self;
        defaultPicker.delegate = self;
        defaultPicker.dataSource = self;
        maxPicker.delegate = self;
        maxPicker.dataSource = self;
        
        minPicker.tag = 0
        defaultPicker.tag = 1
        maxPicker.tag = 2
        
        let defaults = NSUserDefaults.standardUserDefaults()
        var minRow = defaults.integerForKey("MinimumRow")
        var maxRow = defaults.integerForKey("MaximumRow")
        
        var defaultRow = defaults.integerForKey("DefaultRow")
        
        minPicker.selectRow(minRow, inComponent: 0, animated: true)
        maxPicker.selectRow(maxRow, inComponent: 0, animated: true)
        defaultPicker.selectRow(defaultRow, inComponent: 0, animated: true)
    

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int  {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return pickerDataSource.count
        
//        if pickerView.tag == 0 {
//            return pickerDataSource.count
//        } else if pickerView.tag == 1 {
//            return pickerDataSource.count
////        } else if pickerView.tag == 2 {
////            return  pickerDataSource.count
////        } else if  pickerView.tag == 3 {
////            return pickerDataSource.count
//        }
//        return 1
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        
//        if pickerView.tag == 0 {
//            return pickerDataSource[row]
//        } else if pickerView.tag == 1 {
//            return pickerDataSource[row]
//        } else if pickerView.tag == 2 {
//            return pickerDataSource[row]
//        } else if pickerView.tag == 3 {
//            return pickerDataSource[row]
//        }
        return pickerDataSource[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)  {
        
        let defaults = NSUserDefaults.standardUserDefaults()
        var pickerChoice = pickerDataSource[row]
        pickerChoice = pickerChoice.substringToIndex(pickerChoice.endIndex.predecessor())
        var pickInt = Int(pickerChoice)
        
        
        if pickerView.tag == 0 {
            //textField1.text = hazards[row]
            print("Min: \(pickInt)")
            defaults.setInteger(pickInt!, forKey: "Minimum")
            defaults.setInteger(row, forKey: "MinimumRow")
        } else if pickerView.tag == 1 {
            //textField2.text = reasons[row]
            print("Default: \(pickInt)")
            defaults.setInteger(pickInt!, forKey: "Default")
            defaults.setInteger(row, forKey: "DefaultRow")
        } else if pickerView.tag == 2 {
            //textField3.text = site[row]
            print("Max: \(pickInt)")
            defaults.setInteger(pickInt!, forKey: "Maximum")
            defaults.setInteger(row, forKey: "MaximumRow")

        }
        defaults.synchronize()
    }
    
    //-------
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
