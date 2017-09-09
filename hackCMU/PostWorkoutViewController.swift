//
//  PostWorkoutViewController.swift
//  hackCMU
//
//  Created by Michael Kelvyn Chan on 08/09/2017.
//
//

import UIKit
import WebKit


class PostWorkoutViewController: UIViewController, WKNavigationDelegate {
    @IBOutlet var foodButton: UIButton!
    let webView = WKWebView()
    override func viewDidLoad() {
        super.viewDidLoad()
       /* webView.frame = view.bounds
        webView.navigationDelegate = self
        webView.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        view.addSubview(webView)
        webView.isHidden = true */
        
        // Do any additional setup after loading the view.
    }
    @IBAction func onPeachDishPress(_ sender: Any) {
        let urlString = "https://www.peachdish.com/menu"
        if let url = URL(string: urlString){
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    @IBAction func onGNCPress(_ sender: UIButton) {
        let urlString = "http://www.gnc.com/july-great-value-sale/350280.html?product_id=350280&flagtype=nonbrand&vendor=none&channel=ppc&adpos=1o1&creative=189757865887&device=c&matchtype=&network=g&gclid=CjwKCAjwos7NBRAWEiwAypNCe29c7XB5cjCPBOFnAanYoE6rcA5XUK54fyEKF6OOOkaosyaC4KYAGhoC5-cQAvD_BwE"
        if let url = URL(string: urlString){
              UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }

    }
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
