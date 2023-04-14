//
//  WeatherMainViewController.swift
//  Neobis_iOS_UIScreens
//
//  Created by Тагай Абдылдаев on 11/4/23.
//

import UIKit
import SnapKit

class WeatherMainViewController: UIViewController {
    
    let mainView = WeatherMainView()
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        view.addSubview(mainView)
        mainView.snp.makeConstraints { make in
            make.size.equalToSuperview()
        }
        gradient()

        mainView.weekButton.addTarget(self, action: #selector(handleTap), for: .touchUpInside)
    }
    func gradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        gradientLayer.colors = [UIColor(red: 70/255, green: 188/255, blue: 225/255, alpha: 1).cgColor,UIColor(red: 73/255, green: 173/255, blue: 236/255, alpha: 1).cgColor,UIColor(red: 74/255, green: 153/255, blue: 249/255, alpha: 1).cgColor]
        gradientLayer.locations = [0.0, 0.5, 1.0]
        
        let animation = CABasicAnimation(keyPath: "colors")
        animation.fromValue = [UIColor(red: 70/255, green: 188/255, blue: 225/255, alpha: 1).cgColor,UIColor(red: 73/255, green: 173/255, blue: 236/255, alpha: 1).cgColor,UIColor(red: 74/255, green: 153/255, blue: 249/255, alpha: 1).cgColor]
        animation.toValue = [UIColor(red: 74/255, green: 153/255, blue: 249/255, alpha: 1).cgColor,UIColor(red: 73/255, green: 173/255, blue: 236/255, alpha: 1).cgColor,UIColor(red: 70/255, green: 188/255, blue: 225/255, alpha: 1).cgColor]
        animation.duration = 3.0
        animation.autoreverses = true
        animation.repeatCount = .infinity
        gradientLayer.add(animation, forKey: nil)
    }
    
    @objc func handleTap() {
        let viewController = WeatherWeekViewController()
        viewController.modalPresentationStyle = .fullScreen
        present(viewController, animated: true)
    }
}
