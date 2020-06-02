//
//  ViewController.swift
//  HWls7_RigaViktor
//
//  Created by Viktor Riga on 02.06.2020.
//  Copyright © 2020 Viktor Riga. All rights reserved.
//

import UIKit

protocol FullNameDelegate: class {
    func sendFullName(name: String, surname: String)
}

class ViewController: UIViewController, FullNameDelegate{
    
    

    @IBOutlet weak var finishLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           super.prepare(for: segue, sender: sender)
           if segue.identifier == "segueToNameVC", let destinationVC = segue.destination as? SecondViewController {
               destinationVC.view.backgroundColor = .green
           }
       }
    
    
    func sendFullName(name: String, surname: String) {
        finishLable.text = "\(name) \(surname)"
    }
}

