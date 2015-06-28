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
  
  @IBOutlet weak var mensShoeSizeLabel: UILabel!
  
  
  @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func convertButtonPressed(sender: UIButton) {
    let sizeFromTextField = mensShoeSizeTextField.text
    let numberFromTextField = sizeFromTextField.toInt()
    var integerFromtextField = numberFromTextField!
    let conversionConstant = 30
    integerFromtextField += conversionConstant
    mensConvertedShoeSizeLabel.hidden = false
    let stringWithUpdatedShoeSize = "\(integerFromtextField)"
    mensConvertedShoeSizeLabel.text = stringWithUpdatedShoeSize
  }

 
}

