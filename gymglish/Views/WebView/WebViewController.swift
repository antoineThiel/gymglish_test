//
//  WebViewController.swift
//  gymglish
//
//  Created by Antoine THIEL on 28/04/2021.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    @IBOutlet var webview: WKWebView!
    var stringUrl: String!
    
    class func newInstance(nibName:String?, url: String) -> WebViewController{
        let view = WebViewController(nibName: "WebViewController", bundle: nil)
        view.stringUrl = url
        return view;
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let url = URL(string: self.stringUrl) {
            print(url)
            let request = URLRequest(url: url)
            webview.load(request)
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
