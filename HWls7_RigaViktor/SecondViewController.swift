//
//  SecondViewController.swift
//  HWls7_RigaViktor
//
//  Created by Viktor Riga on 02.06.2020.
//  Copyright © 2020 Viktor Riga. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    weak var delegate: NameDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func nextButtonAction(_ sender: Any) {
        if let name = nameLable.text {
            delegate?.sendingString(name: name, surname: "")
        }
        dismiss(animated: true, completion: nil)
    }
    

}
