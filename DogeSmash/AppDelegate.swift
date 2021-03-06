//
//  AppDelegate.swift
//  DogeSmash
//
//  Created by Trinity on 10/15/15.
//  Copyright © 2015 Trinity. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    //? (optional) initialized without giving a value: ? means it could be null, nil
    var window: UIWindow?
    //conncted with objective-c runtime
    //launchOptions: similar to intent
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        
        
        let settings = UIUserNotificationSettings(forTypes: .Alert,
            categories: nil)
        
        application.registerUserNotificationSettings(settings)
        
        return true
        
        
        /**
        // Override point for customization after application launch.
        let notifSettings:UIUserNotificationSettings = UIUserNotificationSettings(forTypes:[.Alert, .Badge, .Sound], categories: nil)
        UIApplication.sharedApplication().registerUserNotificationSettings(notifSettings)
        return true
        **/
    }
    
    

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
    func application(application: UIApplication,
        didRegisterUserNotificationSettings
        notificationSettings: UIUserNotificationSettings){
            
            let notification = UILocalNotification()
            
            /* Time and timezone settings */
            
            notification.fireDate = NSDate(timeIntervalSinceNow: 5)
            notification.timeZone = NSCalendar.currentCalendar().timeZone
            
            notification.alertBody = "I will miss you. -Doge"
            
            /* Action settings */
            notification.hasAction = true
            notification.alertAction = "View"
            
            /* Badge settings */
            notification.applicationIconBadgeNumber++
            
            /* Additional information, user info */
            notification.userInfo = [
                "Key 1" : "Value 1",
                "Key 2" : "Value 2"
            ]
            
            /* Schedule the notification */
            application.scheduleLocalNotification(notification)
            
    }
    
    
    


}

