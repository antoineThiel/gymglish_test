//
//  LoginViewController.swift
//  gymglish
//
//  Created by Antoine THIEL on 28/04/2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var username: UITextField!
    @IBOutlet var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        username.self.text = ""
        password.self.text = ""
    }
    
    @IBAction func onClick(_ sender: Any) {
        guard username.text != nil else {
            return
        }
        guard password.text != nil else {
            return
        }
        
        if username.text != "gymglish" {
            return
        }
        if password.text != "gymglish" {
            return
        }
        
        let listViewController = ListViewController(nibName: "ListViewController", bundle: nil)
        self.navigationController?.pushViewController(listViewController, animated: true)
    }

}
