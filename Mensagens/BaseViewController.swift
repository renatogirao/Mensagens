//
//  BaseViewController.swift
//  Mensagens
//
//  Created by Renato Savoia Girão on 31/01/22.
//  Copyright © 2022 Eric Brito. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    @IBOutlet weak var labelMessage: UILabel!
    var message: Message!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func changeColor(_ sender: UIButton) {
       
    }
}
