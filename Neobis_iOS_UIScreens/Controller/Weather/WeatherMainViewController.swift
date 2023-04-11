//
//  WeatherMainViewController.swift
//  Neobis_iOS_UIScreens
//
//  Created by Тагай Абдылдаев on 11/4/23.
//

import UIKit
import SnapKit

class WeatherMainViewController: UIViewController {
    
    let leftImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "Vector 12")
        return iv
    }()
    
    let rightImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "Vector 11")
        return iv
    }()
    
    let locationLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont(name: "Overpass-Bold", size: 24)
        label.text = "Бишкек"
        label.addShadow1()
        return label
    }()
    
    let locationImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "locator")
        return iv
    }()
    
    let locationButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "down"), for: .normal)
        return button
    }()
    
    let alertButton: UIButton = {
       let button = UIButton()
        button.setImage(UIImage(named: "notification"), for: .normal)
        return button
    }()
    
    let sunImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "sun")
        return iv
    }()
    
    let sunBackImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "sun-background")
        return iv
    }()
    
    let dateViewController = WeatherMiddleViewController()
    
    let weekButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Прогноз на неделю", for: .normal)
        button.titleLabel?.font = UIFont(name: "Overpass-Regular", size: 16)
        button.setImage(UIImage(named:"up"), for: .normal)
        button.tintColor = UIColor(red: 0.267, green: 0.306, blue: 0.446, alpha: 1)
        button.semanticContentAttribute = .forceRightToLeft
        button.backgroundColor = .white
        button.layer.cornerRadius = 20
    
        return button
    }()
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        view.backgroundColor = UIColor(red: 71/255, green: 184/255, blue: 227/255, alpha: 1)
                
        setupViews()
        gradient()
        
        weekButton.addTarget(self, action: #selector(handleTap), for: .touchUpInside)
        
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
    
    fileprivate func setupViews() {
                
        view.addSubview(leftImageView)
        leftImageView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.top.equalToSuperview().offset(view.frame.height / 9.26)
        }
        
        view.addSubview(rightImageView)
        rightImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(-(view.frame.height / 30.8))
            make.trailing.equalToSuperview().offset(view.frame.height / 18.52)
        }
        
        view.addSubview(locationImageView)
        locationImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(view.frame.height / 13.2)
            make.leading.equalToSuperview().offset(view.frame.height / 26.4)
        }
        
        view.addSubview(locationLabel)
        locationLabel.snp.makeConstraints { make in
            make.top.equalTo(locationImageView.snp.top)
            make.leading.equalTo(locationImageView.snp.trailing).offset(view.frame.height / 46.3)
        }
        
        view.addSubview(locationButton)
        locationButton.snp.makeConstraints { make in
            make.top.equalTo(locationImageView.snp.top).offset(5)
            make.leading.equalTo(locationLabel.snp.trailing).offset(view.frame.height / 46.3)
        }
        
        view.addSubview(alertButton)
        alertButton.snp.makeConstraints { make in
            make.top.equalTo(locationImageView.snp.top)
            make.trailing.equalToSuperview().offset(-(view.frame.height / 26.4))
        }
        
        if view.frame.height < 700 {
            view.addSubview(sunBackImageView)
            sunBackImageView.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
            }
        } else {
            view.addSubview(sunBackImageView)
            sunBackImageView.snp.makeConstraints { make in
                make.top.equalTo(locationLabel.snp.bottom).offset(view.frame.height / 18.52)
                make.centerX.equalToSuperview()
            }
        }

        view.addSubview(sunImageView)
        sunImageView.snp.makeConstraints { make in
            make.center.equalTo(sunBackImageView.snp.center)
        }
        
        view.addSubview(dateViewController.view)
        dateViewController.view.snp.makeConstraints { make in
            make.top.equalTo(sunImageView.snp.bottom).offset(view.frame.height / 13.2)
            make.leading.equalToSuperview().offset((view.frame.height / 30.8))
            make.trailing.equalToSuperview().offset(-(view.frame.height / 30.8))
            make.height.equalTo(view.frame.height / 2.6)
        }
        
        view.addSubview(weekButton)
        weekButton.snp.makeConstraints { make in
            make.top.equalTo(dateViewController.view.snp.bottom).offset((view.frame.height / 15.4))
            make.leading.equalToSuperview().offset(view.frame.height / 13.2)
            make.trailing.equalToSuperview().offset(-(view.frame.height / 13.2))
            make.height.equalTo(view.frame.height / 13.2)
        }
        
    }
}
