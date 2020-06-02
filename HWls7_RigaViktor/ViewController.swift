//
//  ViewController.swift
//  HWls7_RigaViktor
//
//  Created by Viktor Riga on 02.06.2020.
//  Copyright © 2020 Viktor Riga. All rights reserved.
//

import UIKit

protocol NameDelegate: class {
    func sendingString(name: String, surname: String)
}

class ViewController: UIViewController, NameDelegate{
    
    @IBOutlet weak var finishLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "goToFirstVC" else { return }
        guard  let destination = segue.destination as? ThirdViewController else { return }
        destination.delegate = self
    }

    func sendingString(name: String, surname: String) {
        finishLable.text = "\(name) \(surname)"
    }

}

