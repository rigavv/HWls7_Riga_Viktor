//
//  ThirdViewController.swift
//  HWls7_RigaViktor
//
//  Created by Viktor Riga on 02.06.2020.
//  Copyright © 2020 Viktor Riga. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var surnameLable: UILabel!
    @IBOutlet weak var surnameTextField: UITextField!
    
    weak var delegate: NameDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func finishButtonAction(_ sender: UIButton) {
        if let name = surnameLable.text, let surname = surnameTextField.text{
        delegate?.sendingString(name: name, surname: surname)
        }
        dismiss(animated: true, completion: nil)
    }
    
}
