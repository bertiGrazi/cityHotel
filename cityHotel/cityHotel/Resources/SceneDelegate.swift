//
//  SceneDelegate.swift
//  cityHotel
//
//  Created by Grazielli Berti on 10/04/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.windowScene = windowScene

        let highlightsViewController = HighlightsViewController()
        highlightsViewController.tabBarItem = UITabBarItem(title: "Highlights", image: UIImage(systemName: "rectangle.and.pencil.and.ellipsis"), tag: 1)
        
        
        let packagesViewController = PackagesViewController()
        packagesViewController.navigationItem.largeTitleDisplayMode = .always
        packagesViewController.tabBarItem = UITabBarItem(title: "Packages", image: UIImage(systemName: "airplane.departure"), tag: 1)
        
        let requestsViewController = RequestsViewController()
        requestsViewController.navigationItem.largeTitleDisplayMode = .always
        requestsViewController.tabBarItem = UITabBarItem(title: "Requests", image: UIImage(systemName: "bag.fill"), tag: 1)
        
        let myAccountViewController = MyAccountViewController()
        myAccountViewController.tabBarItem = UITabBarItem(title: "Account", image: UIImage(systemName: "person.crop.square"), tag: 1)
        
        let moreFeaturesViewController = MoreFeaturesViewController()
        moreFeaturesViewController.tabBarItem = UITabBarItem(title: "More", image: UIImage(systemName: "ellipsis"), tag: 1)
        
        let nav1 = UINavigationController(rootViewController: packagesViewController)
        nav1.navigationBar.prefersLargeTitles = true
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [highlightsViewController, nav1, requestsViewController, myAccountViewController, moreFeaturesViewController]
        tabBarController.selectedViewController = nav1
        
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

