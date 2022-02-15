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
        labelMessage.backgroundColor = message.backgroundColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ScreenColorViewController
        vc.message = message
    }
}

extension MessageColorViewController: colorPickerDelegate {
    func applyColor(color: UIColor) {
        labelMessage.backgroundColor = color
        message.backgroundColor = color
    }
}

