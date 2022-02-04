//
//  ViewController.swift
//  Mensagens
//
//  Copyright © 2017 Eric Brito. All rights reserved.
//

import UIKit

class MessageViewController: BaseViewController {

    var labelTeste: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        message = Message()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! MessageColorViewController
        vc.message = message
    }
    
    override func changeColor(_ sender: UIButton) {
        let ColorPickerVC = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
        ColorPickerVC.modalPresentationStyle = .overCurrentContext
        ColorPickerVC.reference = self
        present(ColorPickerVC, animated: true, completion: nil)
    }
}

extension MessageViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        message.text = textField.text!
        labelMessage.text = textField.text!
        textField.resignFirstResponder()
        return true
    }
}

extension MessageViewController: colorPickerProtocol {
    func applyColor(color: UIColor) {
        labelMessage.textColor = color
        message.textColor = color
    }
}
