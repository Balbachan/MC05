//
//  ViewController.swift
//  MC05
//
//  Created by Laura C. Balbachan dos Santos on 14/05/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Notes"
        
        
        (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    }
}

#Preview {
    return ViewController()
}

