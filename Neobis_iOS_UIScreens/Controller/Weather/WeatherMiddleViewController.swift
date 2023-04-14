//
//  WeatherMiddleView.swift
//  Neobis_iOS_UIScreens
//
//  Created by Тагай Абдылдаев on 11/4/23.
//

import UIKit

class WeatherMiddleViewController: UIViewController {
    
     let middleView = WeatherMiddleView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(middleView)
        middleView.snp.makeConstraints { make in
            make.size.equalToSuperview()
        }
    }
    
}
