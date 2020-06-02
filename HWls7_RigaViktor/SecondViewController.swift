//
//  SecondViewController.swift
//  HWls7_RigaViktor
//
//  Created by Viktor Riga on 02.06.2020.
//  Copyright © 2020 Viktor Riga. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if segue.identifier == "segueToSurnameVC", let destinationVC = segue.destination as? ThirdViewController {
            _ = destinationVC.view
            destinationVC.nameLable.text = nameTextField.text
            destinationVC.view.backgroundColor = .yellow
        }
    }

}

