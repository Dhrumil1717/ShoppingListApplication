//
//  ViewController.swift
//  ShoppingApplication
//
//  Created by Dhrumil Malaviya on 2020-10-28.
//  Copyright © 2020 Dhrumil Malaviya. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate
{

   
    @IBOutlet weak var textInputListName: UITextField!
    @IBOutlet weak var textInputItem1: UITextField!
    @IBOutlet weak var textInputItem2: UITextField!
    @IBOutlet weak var textInputItem3: UITextField!
    @IBOutlet weak var textInputItem4: UITextField!
    @IBOutlet weak var textInputItem5: UITextField!
    
    @IBOutlet weak var labelStepper1: UILabel!
    @IBOutlet weak var labelStepper2: UILabel!
    @IBOutlet weak var labelStepper3: UILabel!
    @IBOutlet weak var labelStepper4: UILabel!
    @IBOutlet weak var labelStepper5: UILabel!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.textInputListName.delegate = self
        self.textInputItem1.delegate = self
        self.textInputItem2.delegate = self
        self.textInputItem3.delegate = self
        self.textInputItem4.delegate = self
        self.textInputItem5.delegate = self
    }
    
    
    
    func textFieldDidBeginEditing(_ textField: UITextField)
        {
             scrollView.setContentOffset(CGPoint(x: 0,y: 400), animated: true)
        }
    func textFieldDidEndEditing(_ textField: UITextField)
        {
            scrollView.setContentOffset(CGPoint(x: 0,y: 0), animated: true)
        }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool //dismiss the keyboard when user presses return button
       {
            textField.resignFirstResponder()
            return true
       }

    
    @IBAction func stepper1(_ sender: UIStepper)
    {
        labelStepper1.text=String(format: "%.0f", sender.value)
    }
    
    @IBAction func stepper2(_ sender: UIStepper)
    {
       labelStepper2.text=String(format: "%.0f", sender.value)
    }
    
    @IBAction func stepper3(_ sender: UIStepper)
    {
        labelStepper3.text=String(format: "%.0f", sender.value)
    }
    
    @IBAction func stepper4(_ sender: UIStepper)
    {
        labelStepper4.text=String(format: "%.0f", sender.value)
    }
    
    @IBAction func stepper5(_ sender: UIStepper)
    {
        labelStepper5.text=String(format: "%.0f", sender.value)
    }
    
}

