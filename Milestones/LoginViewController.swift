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

    let webView: UIWebView = {
        let webview = UIWebView()
        webview.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        webview.loadRequest(NSURLRequest(url: NSURL(string: "https://heatemdev.slack.com/oauth/authorize?client_id=\(CLIENT_ID)&scope=identity.basic")! as URL) as URLRequest)
        return webview
    }()
    
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
        view.addSubview(webView)
    }

}
