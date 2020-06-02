//
//  ThirdViewController.swift
//  HWls7_RigaViktor
//
//  Created by Viktor Riga on 02.06.2020.
//  Copyright © 2020 Viktor Riga. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var nameLable: UILabel!
    
    @IBOutlet weak var surnameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if segue.identifier == "segueToFinish", let destinationVC = segue.destination as? ViewController {
            _ = destinationVC.view
            destinationVC.finishLable.text = nameLable.text! + " " + surnameTextField.text!
            destinationVC.view.backgroundColor = .brown
//            guard let  = (scene as? UIWindowScene) else { return }
//                       self.view.window
           
        }
    }
    
}
