//
//  WeatherMainView.swift
//  Neobis_iOS_UIScreens
//
//  Created by Тагай Абдылдаев on 14/4/23.
//

import UIKit


class WeatherMainView: UIView {
    
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
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        setupViews()
    }
        
    fileprivate func setupViews() {
                
        addSubview(leftImageView)
        leftImageView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.top.equalToSuperview().offset(flexibleHeight(to: 100))
        }
        
        addSubview(rightImageView)
        rightImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(-(flexibleHeight(to: 30)))
            make.trailing.equalToSuperview().offset(flexibleWidth(to: 50))
        }
        
        addSubview(locationImageView)
        locationImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(flexibleHeight(to: 70))
            make.leading.equalToSuperview().offset(flexibleWidth(to: 35))
        }
        
        addSubview(locationLabel)
        locationLabel.snp.makeConstraints { make in
            make.top.equalTo(locationImageView.snp.top)
            make.leading.equalTo(locationImageView.snp.trailing).offset(flexibleWidth(to: 20))
        }
        
        addSubview(locationButton)
        locationButton.snp.makeConstraints { make in
            make.top.equalTo(locationImageView.snp.top).offset(5)
            make.leading.equalTo(locationLabel.snp.trailing).offset(flexibleWidth(to: 20))
        }
        
        addSubview(alertButton)
        alertButton.snp.makeConstraints { make in
            make.top.equalTo(locationImageView.snp.top)
            make.trailing.equalToSuperview().offset(-(flexibleWidth(to: 35)))
        }
        
        
        addSubview(sunBackImageView)
        sunBackImageView.snp.makeConstraints { make in
            make.top.equalTo(locationLabel.snp.bottom).offset(flexibleWidth(to: 50))
            make.centerX.equalToSuperview()
        }

        addSubview(sunImageView)
        sunImageView.snp.makeConstraints { make in
            make.center.equalTo(sunBackImageView.snp.center)
        }
        
        addSubview(dateViewController.view)
        dateViewController.view.snp.makeConstraints { make in
            make.top.equalTo(sunImageView.snp.bottom).offset(flexibleHeight(to: 70))
            make.leading.equalToSuperview().offset((flexibleHeight(to: 30)))
            make.trailing.equalToSuperview().offset(-(flexibleHeight(to: 30)))
            make.height.equalTo(flexibleHeight(to: 356))
        }
        
        addSubview(weekButton)
        weekButton.snp.makeConstraints { make in
            make.top.equalTo(dateViewController.view.snp.bottom).offset((flexibleHeight(to: 60)))
            make.leading.equalToSuperview().offset(flexibleWidth(to: 70))
            make.trailing.equalToSuperview().offset(-(flexibleWidth(to: 70)))
            make.height.equalTo(flexibleHeight(to: 70))
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
