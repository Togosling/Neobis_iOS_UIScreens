//
//  WeatherMainViewController.swift
//  Neobis_iOS_UIScreens
//
//  Created by Тагай Абдылдаев on 11/4/23.
//

import UIKit
import SnapKit

class WeatherMainViewController: UIViewController {
    
    let allImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "")
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
        

        button.layer.cornerRadius = 20
        button.backgroundColor = .white
        button.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.1).cgColor
        button.layer.shadowOpacity = 1
        button.layer.shadowRadius = 50
        button.layer.shadowOffset = CGSize(width: -4, height: 8)
        button.layer.masksToBounds = false

        return button
    }()
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        view.backgroundColor = UIColor(red: 71/255, green: 184/255, blue: 227/255, alpha: 1)
                
        setupViews()
        
        weekButton.addTarget(self, action: #selector(handleTap), for: .touchUpInside)
        
    }
    
    @objc func handleTap() {
        let viewController = WeatherWeekViewController()
        viewController.modalPresentationStyle = .fullScreen
        present(viewController, animated: true)
    }
    
    fileprivate func setupViews() {
        
        view.addSubview(locationImageView)
        locationImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(70)
            make.leading.equalToSuperview().offset(35)
        }
        
        view.addSubview(locationLabel)
        locationLabel.snp.makeConstraints { make in
            make.top.equalTo(locationImageView.snp.top)
            make.leading.equalTo(locationImageView.snp.trailing).offset(20)
        }
        
        view.addSubview(locationButton)
        locationButton.snp.makeConstraints { make in
            make.top.equalTo(locationImageView.snp.top).offset(5)
            make.leading.equalTo(locationLabel.snp.trailing).offset(20)
        }
        
        view.addSubview(alertButton)
        alertButton.snp.makeConstraints { make in
            make.top.equalTo(locationImageView.snp.top)
            make.trailing.equalToSuperview().offset(-35)
        }
        
        view.addSubview(sunBackImageView)
        sunBackImageView.snp.makeConstraints { make in
            make.top.equalTo(locationLabel.snp.bottom).offset(50)
            make.centerX.equalToSuperview()
        }
        view.addSubview(sunImageView)
        sunImageView.snp.makeConstraints { make in
            make.center.equalTo(sunBackImageView.snp.center)
        }
        
        view.addSubview(dateViewController.view)
        dateViewController.view.snp.makeConstraints { make in
            make.top.equalTo(sunImageView.snp.bottom).offset(70)
            make.leading.equalToSuperview().offset(30)
            make.trailing.equalToSuperview().offset(-30)
            make.height.equalTo(view.frame.height / 2.6)
        }
        
        view.addSubview(weekButton)
        weekButton.snp.makeConstraints { make in
            make.top.equalTo(dateViewController.view.snp.bottom).offset(60)
            make.leading.equalToSuperview().offset(70)
            make.trailing.equalToSuperview().offset(-70)
            make.height.equalTo(70)
        }
        
    }
}
