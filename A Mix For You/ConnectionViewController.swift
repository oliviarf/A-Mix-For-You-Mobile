//
//  ConnectionViewController.swift
//  A Mix For You
//
//  Created by Olivia Foster on 2019-10-05.
//  Copyright © 2019 Olivia Foster. All rights reserved.
//


import Foundation
import Alamofire
import WebKit
import UIKit

class ConnectionViewController: UIViewController{
    
   static let sharedInstance = ConnectionViewController()
    
    var webView: WKWebView!
    
    let SpotifyClientID: String = "dc9b38950b2e49019166a761c1562ad7"
    let SpotifyRedirectURL = "amixforyou://callback"
    let tokenSwapURL = URL(string: "https://amixforyou.herokuapp.com/api/token")
    let tokenRefreshURL = URL(string: "https://amixforyou.herokuapp.com/api/refresh_token")
    
    lazy var rootAppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        view = webView
        startAuthorization()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func startAuthorization(){
        let authString1 : String = "https://accounts.spotify.com/authorize?client_id=" + SpotifyClientID
        let authString2: String = "&response_type=code&redirect_uri=" + SpotifyRedirectURL + "&scope=streaming"
        let authString = authString1 + authString2
        let authURL = URL(string: authString)
        let request = URLRequest(url: authURL!)
        webView.load(request)
        }
    
    func webView(
        _ webView: WKWebView,
        decidePolicyFor navigationAction: WKNavigationAction,
        decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        
        guard let url = navigationAction.request.url else {
            decisionHandler(.allow)
            return
        }
        
        
        if url.absoluteString.contains("/login/success") {
            // this means login successful
            decisionHandler(.cancel)
            _ = self.navigationController?.popViewController(animated: false)
        }
        else {
            decisionHandler(.allow)
        }
    }

}

