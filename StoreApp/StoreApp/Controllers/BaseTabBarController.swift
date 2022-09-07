//
//  Base.swift
//  StoreApp
//
//  Created by Andrey Bulganin on 05.09.2022.
//

import UIKit

class BaseTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [
            createNavController(viewController: UIViewController(), title: "Today", imageName: "today_icon"),
            createNavController(viewController: UIViewController(), title: "App", imageName: "apps"),
            createNavController(viewController: AppSearchController(), title: "Search", imageName: "search")
        ]
        
    }
    fileprivate func createNavController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {
        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.prefersLargeTitles = true
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = UIImage(named: imageName)
        viewController.navigationItem.title = title
        viewController.view.backgroundColor = .white
        return navController
        
    }
    
}
