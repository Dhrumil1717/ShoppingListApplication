//
//  ViewController.swift
//  File Name: ShoppingApplication
//  Created by Dhrumil Malaviya on 2020-10-28.
//  Student ID: 301058391
//  Description: A shopping list application that enables a user to create a list of items that they wish to buy
//  Copyright © 2020 Dhrumil Malaviya. All rights reserved.
//

import UIKit
var flag=0
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
    
    
    
    @IBOutlet weak var stepper1: UIStepper!
    @IBOutlet weak var stepper2: UIStepper!
    @IBOutlet weak var stepper3: UIStepper!
    @IBOutlet weak var stepper4: UIStepper!
    @IBOutlet weak var stepper5: UIStepper!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.textInputListName.delegate = self
        self.textInputItem1.delegate = self
        self.textInputItem2.delegate = self
        self.textInputItem3.delegate = self
        self.textInputItem4.delegate = self
        self.textInputItem5.delegate = self
        

        
         // MARK: - Swipe Methods
        let swipeRight1 = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGestureForInputText1))
        swipeRight1.direction = UISwipeGestureRecognizer.Direction.right //recognizes the direction of swipe i.e. right in this case
        textInputItem1.addGestureRecognizer(swipeRight1)
        
        let swipeLeft1 = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGestureForInputText1))
        swipeLeft1.direction = UISwipeGestureRecognizer.Direction.left  //recognizes the direction of swipe i.e. left in this case
        textInputItem1.addGestureRecognizer(swipeLeft1)
        
        let swipeRight2 = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGestureForInputText2))
        swipeRight2.direction = UISwipeGestureRecognizer.Direction.right
        textInputItem2.addGestureRecognizer(swipeRight2)
               
        let swipeLeft2 = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGestureForInputText2))
        swipeLeft2.direction = UISwipeGestureRecognizer.Direction.left
        textInputItem2.addGestureRecognizer(swipeLeft2)
        
        let swipeRight3 = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGestureForInputText3))
        swipeRight3.direction = UISwipeGestureRecognizer.Direction.right
        textInputItem3.addGestureRecognizer(swipeRight3)
               
        let swipeLeft3 = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGestureForInputText3))
        swipeLeft3.direction = UISwipeGestureRecognizer.Direction.left
        textInputItem3.addGestureRecognizer(swipeLeft3)
        
        let swipeRight4 = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGestureForInputText4))
        swipeRight4.direction = UISwipeGestureRecognizer.Direction.right
        textInputItem4.addGestureRecognizer(swipeRight4)
               
        let swipeLeft4 = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGestureForInputText4))
        swipeLeft4.direction = UISwipeGestureRecognizer.Direction.left
        textInputItem4.addGestureRecognizer(swipeLeft4)
        
        let swipeRight5 = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGestureForInputText5))
        swipeRight5.direction = UISwipeGestureRecognizer.Direction.right
        textInputItem5.addGestureRecognizer(swipeRight5)
               
        let swipeLeft5 = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGestureForInputText5))
        swipeLeft5.direction = UISwipeGestureRecognizer.Direction.left
        textInputItem5.addGestureRecognizer(swipeLeft5)
        
    }
    
    
     // MARK: -  Fuctions for delegate method, that is used to validate text that was entered by the user
    
    func textFieldDidBeginEditing(_ textField: UITextField)
        {
            if(textField==textInputItem4 || textField==textInputItem5)
            {
             scrollView.setContentOffset(CGPoint(x: 0,y: 10), animated: true)      //setting up a scrollview so that textinput4 and texxtinput 5 are not hidden behind the keyboard
            }
            }
    func textFieldDidEndEditing(_ textField: UITextField)
        {
             if(textField==textInputItem4 || textField==textInputItem5)
             {
                scrollView.setContentOffset(CGPoint(x: 0,y: -50), animated: true)}
        }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool //dismiss the keyboard when user presses return button
       {
            textField.resignFirstResponder()
            return true
       }

     // MARK: - Action methods for stepper
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
    
     // MARK: - Action methods for Buttons
    
    
    @IBAction func onSaveButtonPressed(_ sender: UIButton)
    {
    
     UserDefaults.standard.set(textInputItem1.text, forKey: "savedItem1")   //sending data to save screen
     UserDefaults.standard.set(textInputItem2.text, forKey: "savedItem2")
     UserDefaults.standard.set(textInputItem3.text, forKey: "savedItem3")
     UserDefaults.standard.set(textInputItem4.text, forKey: "savedItem4")
     UserDefaults.standard.set(textInputItem5.text, forKey: "savedItem5")
    
    
    }
    
    @IBAction func onCancelledButtonPressed(_ sender: UIButton)
    {
        //Using alert to confirm from user weather they want to delete entries or not
        let alert = UIAlertController(title: "Cancel", message: "Are you sure you want to clear all entries", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: {action in ()} ))
        //addAction method is used to provide addtional buttons in the alert box. Style "cancel" will cancel the alert box
         alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: {action in
        //Style "default" will perform the default operations in the handler
        self.reset()
         } ))
        present(alert,animated: true)  //present is used to generate the pop up window in the user screen
    }
    
// MARK: - SWIPE METHODS
    
    @IBAction func swipeActionForTextInput1(_ sender: Any)
    {
         
    }
    
    @objc func swipeGestureForInputText1 (sender: UISwipeGestureRecognizer?)
    {
        if let swipeGestureForInputText1 = sender
        {
            switch swipeGestureForInputText1.direction
            {
            case UISwipeGestureRecognizer.Direction.right :
//                textInputItem1.text="swipe right"
                UserDefaults.standard.set(textInputItem1.text, forKey: "item1")
             
            case UISwipeGestureRecognizer.Direction.left :
                textInputItem1.text=""
                UserDefaults.standard.set(textInputItem1.text, forKey: "item1")
            default:
                break
            }
        }
    }
    
    @objc func swipeGestureForInputText2 (sender: UISwipeGestureRecognizer?)
       {
           if let swipeGestureForInputText2 = sender
           {
               switch swipeGestureForInputText2.direction
               {
               case UISwipeGestureRecognizer.Direction.right :
                     UserDefaults.standard.set(textInputItem2.text, forKey: "item2")
                              
               case UISwipeGestureRecognizer.Direction.left :
                   textInputItem2.text=""
                   UserDefaults.standard.set(textInputItem2.text, forKey: "item2")
               default:
                   break
               }
           }
       }
    @objc func swipeGestureForInputText3 (sender: UISwipeGestureRecognizer?)
       {
           if let swipeGestureForInputText3 = sender
           {
               switch swipeGestureForInputText3.direction
               {
               case UISwipeGestureRecognizer.Direction.right :
                   UserDefaults.standard.set(textInputItem3.text, forKey: "item3")
               case UISwipeGestureRecognizer.Direction.left :
                   textInputItem3.text=""
                 UserDefaults.standard.set(textInputItem3.text, forKey: "item3")
               default:
                   break
               }
           }
       }
    @objc func swipeGestureForInputText4 (sender: UISwipeGestureRecognizer?)
       {
           if let swipeGestureForInputText4 = sender
           {
               switch swipeGestureForInputText4.direction
               {
               case UISwipeGestureRecognizer.Direction.right :
                    UserDefaults.standard.set(textInputItem4.text, forKey: "item4")
               case UISwipeGestureRecognizer.Direction.left :
                 
                   textInputItem4.text=""
                UserDefaults.standard.set(textInputItem4.text, forKey: "item4")
               default:
                   break
               }
           }
       }
    @objc func swipeGestureForInputText5 (sender: UISwipeGestureRecognizer?)
       {
           if let swipeGestureForInputText5 = sender
           {
               switch swipeGestureForInputText5.direction
               {
               case UISwipeGestureRecognizer.Direction.right :
                    UserDefaults.standard.set(textInputItem5.text, forKey: "item5")
                   
                
                
               case UISwipeGestureRecognizer.Direction.left :
                   textInputItem5.text=""
                 UserDefaults.standard.set(textInputItem5.text, forKey: "item5")
               default:
                   break
               }
            
            
           }
       }
    func reset()
    {
        textInputItem1.text=""
        textInputItem2.text=""
        textInputItem3.text=""
        textInputItem4.text=""
        textInputItem5.text=""
        labelStepper1.text="0"
        labelStepper2.text="0"
        labelStepper3.text="0"
        labelStepper4.text="0"
        labelStepper5.text="0"
        stepper1.value=0
        stepper2.value=0
        stepper3.value=0
        stepper4.value=0
        stepper5.value=0
    }
}
