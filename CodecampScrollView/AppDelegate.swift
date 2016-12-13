//
//  AppDelegate.swift
//  CodecampScrollView
//
//  Created by Petr Šíma on 10/04/16.
//  Copyright © 2016 Petr Šíma. All rights reserved.
//

import UIKit
import Firebase
import MagicalRecord

//the example app doesnt do anything, its just a list of examples we did in class (here in AppDelegate). The purpose of the class was to show off all the necessary technologies to start using coredata, not to make an example app. For concrete examples see MagicalRecord github or other tutorials.

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UINavigationController(rootViewController: MenuViewController())
        window?.makeKeyAndVisible()
        
        FIRApp.configure()
        
        
        
        
        
        MagicalRecord.setupAutoMigratingCoreDataStack()
        
        
        
        let context = NSManagedObjectContext.mr_()
//
//        let fetchRequest = NSFetchRequest<[Person]>(entityName: "Person")
//        fetchRequest.predicate = NSPredicate(format: "name == %@", "Pepa")
//        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "name", ascending: true)]
//        
//        let persons = context.execute(fetchRequest)

        let persons = Person.mr_findAll() as! [Person]

        
        let firstPerson = persons.first!
        firstPerson.name = "Pavel"
        
//  context.save()
        let personJSON = ["":""]
        MagicalRecord.save({ localCtx in
            Person.mr_import(from: personJSON, in: localCtx)
        })
        
        
        //https://github.com/magicalpanda/MagicalRecord
        
        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
}
