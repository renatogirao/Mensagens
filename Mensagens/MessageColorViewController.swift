//
//  MessageColorViewController.swift
//  Mensagens
//
//  Copyright © 2017 Eric Brito. All rights reserved.
//

import UIKit

class MessageColorViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelMessage.text = message.text
        labelMessage.textColor = message.textColor
    }
    
    override func changeColor(_ sender: UIButton) {
        let colorPickerView = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
        colorPickerView.modalPresentationStyle = .overCurrentContext
        present(colorPickerView, animated: true, completion: nil)
    }
}

extension MessageColorViewController: colorPickerProtocol {
    func applyColor(color: UIColor) {
        labelMessage.textColor = color
        message.textColor = color
    }
}

