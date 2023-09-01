//
//  streetpassApp.swift
//  streetpass
//
//  Created by Frank Dulko on 8/18/23.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
    
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        
    }
}

@main
struct streetpassApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    @StateObject var peripheralManager = PeripheralManager();
    @StateObject var centralManager = CentralManager();
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(centralManager)
        }
    }
}
