//
//  ColorPickerViewController.swift
//  Mensagens
//
//  Created by Renato Savoia Girão on 31/01/22.
//  Copyright © 2022 Eric Brito. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController {

    @IBOutlet var slRed: UISlider!
    @IBOutlet var slGreen: UISlider!
    @IBOutlet var slBlue: UISlider!
    @IBOutlet var viColor: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func chooseColor(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
  
    @IBAction func changeColor(_ sender: Any) {
        
        viColor.backgroundColor = UIColor(red: CGFloat(slRed.value), green: CGFloat(slGreen.value), blue: CGFloat(slBlue.value), alpha: 1.0)
    
        
    
    }
    
}
