//
//  ListViewController.swift
//  gymglish
//
//  Created by Antoine THIEL on 28/04/2021.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet var gymglishLink: UIButton!
    @IBOutlet var wordButton: UIButton!
    @IBOutlet var appleLink: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func webViewGymglish(_ sender: Any) {
        let url = "https://www.gymglish.com"
        let webViewController = WebViewController.newInstance(nibName: "WebViewController", url: url)
        self.navigationController?.pushViewController(webViewController, animated: true)
    }
    @IBAction func webViewWord(_ sender: Any) {
        let url = "https://www.thewordofthemonth.com/fr"
        let webViewController = WebViewController.newInstance(nibName: "WebViewController", url: url)
        self.navigationController?.pushViewController(webViewController, animated: true)
    }
    @IBAction func webViewApple(_ sender: Any) {
        let url = "https://apps.apple.com/us/developer/gymglish-a9/id513283726"
        let webViewController = WebViewController.newInstance(nibName: "WebViewController", url: url)
        self.navigationController?.pushViewController(webViewController, animated: true)
        
    }
}
