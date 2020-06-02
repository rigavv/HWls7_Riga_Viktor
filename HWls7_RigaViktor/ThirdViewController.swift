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
    
    weak var delegate: FullNameDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        super.prepare(for: segue, sender: sender)
//        if segue.identifier == "segueToFinish", let destinationVC = segue.destination as? ViewController {
//            _ = destinationVC.view
//            destinationVC.finishLable.text = "\(String(describing: nameLable)),\(String(describing: surnameTextField.text)) "
//            destinationVC.view.backgroundColor = .brown
//        }
//    }
    
    @IBAction func finishButtonAction(_ sender: UIButton) {
        if let name = nameLable.text, let surname = surnameTextField.text{
        delegate?.sendFullName(name: name, surname: surname)
        print(name, surname)
        }
    }
    
}
