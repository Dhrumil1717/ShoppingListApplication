//
//  SecondViewController.swift
//  ShoppingApplication
//
//  Created by Dhrumil Malaviya on 2020-10-28.
//  Copyright © 2020 Dhrumil Malaviya. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController
{

    @IBOutlet weak var labelFav1: UILabel!
    @IBOutlet weak var lableFav2: UILabel!
    @IBOutlet weak var labelFav3: UILabel!
    @IBOutlet weak var labelFav4: UILabel!
    @IBOutlet weak var labelFav5: UILabel!
    
    var labelText = String()
    var labelText2=String()
    var labelText3=String()
    var labelText4=String()
    var labelText5=String()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
      //  labelFav1.text=labelText
        
        labelFav1.text = UserDefaults.standard.object(forKey: "item1") as? String
        lableFav2.text = UserDefaults.standard.object(forKey: "item2") as? String
        labelFav3.text = UserDefaults.standard.object(forKey: "item3") as? String
        labelFav4.text = UserDefaults.standard.object(forKey: "item4") as? String
        labelFav5.text = UserDefaults.standard.object(forKey: "item5") as? String
        
    }
    
    
}
