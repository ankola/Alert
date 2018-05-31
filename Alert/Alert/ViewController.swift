//
//  ViewController.swift
//  Alert
//
//  Created by agile on 5/31/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
}

    @IBAction func btn(sender: UIButton){
        
        let alert = UIAlertController.init(title: "Alert", message: "Message", preferredStyle: .alert)
        
        alert.addTextField { (textfield) in
        }
        
        alert.addAction(UIAlertAction(title: "Default", style: .default, handler: { (action) in
            print(alert.textFields![0])
            print("Default btn Pressed")
        }))
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            print("cancel btn pressed")
        }
        alert.addAction(cancel)
        
        alert.addAction(UIAlertAction(title: "Destructive", style: .destructive, handler: { (action) in
            print("destructive btn Pressed")
        }))
        
        present(alert, animated: true, completion: nil)
        
    }

    @IBAction func alertview(_ sender: UIButton) {
        let alert = UIAlertView()
        alert.title = "Alert"
        alert.message = "Here's a message"
        alert.addButton(withTitle: "Understood")
        alert.show()
    }
    

}
