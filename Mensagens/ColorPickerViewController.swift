//
//  ColorPickerViewController.swift
//  Mensagens
//
//  Created by Renato Savoia Girão on 31/01/22.
//  Copyright © 2022 Eric Brito. All rights reserved.
//

import UIKit

protocol colorPickerDelegate: class {
    func applyColor(color: UIColor) 
}

class ColorPickerViewController: UIViewController {
    
    @IBOutlet var slRed: UISlider!
    @IBOutlet var slGreen: UISlider!
    @IBOutlet var slBlue: UISlider!
    @IBOutlet var viColor: UIView!
    
    weak var delegate: colorPickerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func chooseColor(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        delegate?.applyColor(color: viColor.backgroundColor!)
    }
    
    @IBAction func changeColor(_ sender: Any) {
        
        viColor.backgroundColor = UIColor(red: CGFloat(slRed.value), green: CGFloat(slGreen.value), blue: CGFloat(slBlue.value), alpha: 1.0)
        
    }
    
}
