//
//  ViewController.swift
//  ShoeConverter
//
//  Created by gambord on 6/26/15.
//  Copyright (c) 2015 bitfountain-student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var mensShoeSizeTextField: UITextField!
  
  @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
  
  
  @IBOutlet weak var womensShoeSizeTextField: UITextField!
  
  @IBOutlet weak var womensConvertedShoeSizeLabal: UILabel!
 
  @IBOutlet weak var UseWholeNumbers: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func convertButtonPressed(sender: UIButton) {
//    let sizeFromTextField = mensShoeSizeTextField.text
//    let numberFromTextField = sizeFromTextField.toInt()
//    var integerFromtextField = numberFromTextField!

    let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
 
    let conversionConstant = 30
    mensConvertedShoeSizeLabel.hidden = false
   
    mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)"+" in European Shoe Size"
    
  }

  @IBAction func womensConvertButtonPressed(sender: AnyObject) {
    let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
    let conversionConstant = 30.5
    womensConvertedShoeSizeLabal.hidden = false
    womensConvertedShoeSizeLabal.text = "\(sizeFromTextField + conversionConstant)"+" in European Shoe Size"
  }
 
}

