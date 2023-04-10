//
//  FinanceTabBarController.swift
//  Neobis_iOS_UIScreens
//
//  Created by Тагай Абдылдаев on 10/4/23.
//

import UIKit

class FinanceTabBarController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.tintColor = .black
        
        viewControllers = [createController(viewController: FinanceViewController(), title: "Главная", imageName: "main"),
                           createController(viewController: UIViewController(), title: "Отчеты", imageName: "report"),
                           createController(viewController: UIViewController(), title: "Профиль", imageName: "profile")]
    }
    
    fileprivate func createController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {
        
        viewController.view.backgroundColor = UIColor(red: 250/255, green: 250/255, blue: 250/255, alpha: 1)
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = UIImage(named: imageName)
        
        return viewController
    }
}
