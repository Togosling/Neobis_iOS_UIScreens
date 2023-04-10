//
//  CryptoTabBarController.swift
//  Neobis_iOS_UIScreens
//
//  Created by Тагай Абдылдаев on 10/4/23.
//

import UIKit

class CryptoTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.tintColor = .red
        
        viewControllers = [createController(viewController: CryptoMainViewController(),  imageName: "crypto-main"),
                           createController(viewController: UIViewController(),  imageName: "transfer"),
                           createController(viewController: UIViewController(),  imageName: "my")]
    }
    
    fileprivate func createController(viewController: UIViewController, imageName: String) -> UIViewController {
        
        viewController.view.backgroundColor = .white
        viewController.tabBarItem.image = UIImage(named: imageName)
        
        return viewController
    }
}
