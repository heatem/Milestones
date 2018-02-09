//
//  LoginViewController.swift
//  Milestones
//
//  Created by Heather Mason on 1/31/18.
//  Copyright © 2018 Heather Mason. All rights reserved.
//

import UIKit
import SlackKit
import WebKit


class LoginViewController: UIViewController, WKUIDelegate {
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.clipsToBounds = true
        button.backgroundColor = UIColor.mBlue
        button.layer.cornerRadius = 10
        button.setTitleColor(UIColor.mLightGray, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button.setTitle("Sign In with Slack", for: .normal)
        button.addTarget(self, action: #selector(signIn), for: .touchUpInside)
        return button
    }()

    var webView: WKWebView!
    
//    override func loadView() {
//        let webConfiguration = WKWebViewConfiguration()
//        webView = WKWebView(frame: .zero, configuration: webConfiguration)
//        webView.uiDelegate = self
//        view = webView
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.mLightGray
        view.addSubview(loginButton)

        installConstraints()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func installConstraints() {
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.topAnchor.constraint(equalTo: view.topAnchor, constant: (view.frame.size.height/2) - 40).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: (view.frame.size.width/2) - 100).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 80).isActive = true
        loginButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    func signIn() {
        
//        let googleURL = NSURL(string: "www.google.com")! as URL
//        UIApplication.shared.open(googleURL, options: [:], completionHandler: nil)
//        let urlString = NSURL(string: "https://www.slack.com/oauth/authorize?client_id=\(CLIENT_ID)&scope=identity.basic") as! URL
//        UIApplication.shared.open(urlString, options: [:], completionHandler: nil)
////
//        var webView: WKWebView!
//        let urlString = URL(string: "https://www.slack.com/oauth/authorize?client_id=\(CLIENT_ID)&scope=identity.basic")
//        //        UIApplication.shared.open(urlString, options: [:], completionHandler: nil)
//
//        let myRequest = URLRequest(url: urlString!)
//        webView.load(myRequest)
//
//        func loadView() {
//            let webConfiguration = WKWebViewConfiguration()
//            webView = WKWebView(frame: .zero, configuration: webConfiguration)
//            webView.uiDelegate = self
//            view = webView
//        }
//
//
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
         
         let myURL = URL(string: "https://www.slack.com/oauth/authorize?client_id=\(CLIENT_ID)&scope=identity.basic")
         let myRequest = URLRequest(url: myURL!)
         webView.load(myRequest)
        
        
 

        /* s ViewController: UIViewController, WKUIDelegate {
            
            var webView: WKWebView!
            
            override func loadView() {
                let webConfiguration = WKWebViewConfiguration()
                webView = WKWebView(frame: .zero, configuration: webConfiguration)
                webView.uiDelegate = self
                view = webView
            }
            override func viewDidLoad() {
                super.viewDidLoad()
                
                let myURL = URL(string: "https://www.apple.com")
                let myRequest = URLRequest(url: myURL!)
                webView.load(myRequest)
            }}
        */

        
//        let webV:UIWebView = UIWebView(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, UIScreen.mainScreen().bounds.height))
//        webV.loadRequest(NSURLRequest(URL: NSURL(string: "http://www.google.co.in")))
//        webV.delegate = self;
//        self.view.addSubview(webV)
//
//        guard let url = URL(string: urlString) else { return }
        
//        URLSession.shared.dataTask(with: url) { (data, response, error) in
//            if error != nil {
//                print(error!.localizedDescription)
//            }
//
//            if let result = data {
//                print(result)
//            }
//
//            if let result = response {
//                print(result)
//            }

            
//            guard let data = data else { return }
//
//            do {
//                let slackData = try JSONDecoder().decode(data, from: data) // what's going on here?
//            } catch let jsonError {
//                print(jsonError)
//            }
//        }.resume()
    }

}
