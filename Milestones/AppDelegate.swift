//
//  AppDelegate.swift
//  Milestones
//
//  Created by Heather Mason on 1/31/18.
//  Copyright © 2018 Heather Mason. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window?.rootViewController = LoginViewController()
        window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
        
        let urlString = String(describing: url)
        let start = urlString.index(urlString.startIndex, offsetBy: 45)
        let end = urlString.index(urlString.endIndex, offsetBy: -7)
        let range = start..<end
        let code = urlString[range]
        
        func getToken() {
            let request = NSMutableURLRequest(url: NSURL(string: "https://slack.com/api/oauth.access?client_id=\(CLIENT_ID)&client_secret=\(CLIENT_SECRET)&code=\(code)")! as URL)
            request.httpMethod = "GET"
            request.setValue("application/json", forHTTPHeaderField: "Accept")
            URLSession.shared.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
                //                print(response)
                guard let unwrappedData = data else { return }
                do {
                    if let rootObject = try JSONSerialization.jsonObject(with: unwrappedData, options: []) as? NSDictionary {
                        DispatchQueue.main.async {
                            usernameFromSlack = (rootObject["user"] as! NSDictionary)["name"]! as! String
                            self.window?.rootViewController = MilestonesViewController()
                            // print((rootObject["user"] as! NSDictionary)["name"]! as! String)
                        }
                    }
                } catch {
                    DispatchQueue.main.async {
                        print(error)
                        self.window?.rootViewController = LoginViewController()
                    }
                }
            }).resume()
        }

//        let codeLength = code.count
//        if codeLength == 90 {
//            self.window?.rootViewController = MilestonesViewController()
//        } else {
//            self.window?.rootViewController = LoginViewController()
//        }
        getToken()
        self.window?.makeKeyAndVisible()

        return true

    }

}

