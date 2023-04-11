//
//  WeatherWeekViewController.swift
//  Neobis_iOS_UIScreens
//
//  Created by Тагай Абдылдаев on 11/4/23.
//

import UIKit
import SnapKit

class WeatherWeekViewController: UIViewController {
    
    var backButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "left"), for: .normal)
        button.tintColor = .white
        return button
    }()
    
    var backLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont(name: "Overpass-SemiBold", size: 24)
        label.text = "Назад"
        label.addShadow1()
        return label
    }()
    
    var settingsButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "настройки"), for: .normal)
        button.tintColor = .white
        return button
    }()
    
    var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont(name: "Overpass-Regular", size: 18)
        label.text = "AccuWeather"
        label.addShadow1()
        return label
    }()
    
    var titleImageView: UIImageView = {
       let iv = UIImageView()
        iv.image = UIImage(named: "Солнце")
        return iv
    }()
    
    var todayLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont(name: "Overpass-SemiBold", size: 24)
        label.text = "Сегодня"
        label.addShadow1()
        return label
    }()
    
    var dateLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont(name: "Overpass-Regular", size: 18)
        label.text = "Апр, 26"
        label.addShadow1()
        return label
    }()
    
    let middleCollectionViewController = WeatherMiddleCollectionViewController()
    
    var thisWeekLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont(name: "Overpass-SemiBold", size: 24)
        label.text = "На этой неделе"
        label.addShadow1()
        return label
    }()
    
    var calendarImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "Календарь")
        iv.addShadow()
        return iv
    }()
    
    let bottomCollectionViewController = WeatherBottomCollectionViewController()
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        view.backgroundColor = UIColor(red: 71/255, green: 184/255, blue: 227/255, alpha: 1)

        setupViews()
        
        backButton.addTarget(self, action: #selector(handleBack), for: .touchUpInside)
    }
    
    @objc func handleBack() {
        self.dismiss(animated: true)
    }
    
    fileprivate func setupViews() {
        
        view.addSubview(backButton)
        backButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(70)
            make.leading.equalToSuperview().offset(35)
        }
        
        view.addSubview(backLabel)
        backLabel.snp.makeConstraints { make in
            make.top.equalTo(backButton.snp.top).offset(-6)
            make.leading.equalTo(backButton.snp.trailing).offset(10)
        }
        
        view.addSubview(settingsButton)
        settingsButton.snp.makeConstraints { make in
            make.top.equalTo(backButton.snp.top).offset(2)
            make.trailing.equalToSuperview().offset(-35)
        }
        view.addSubview(todayLabel)
        todayLabel.snp.makeConstraints { make in
            make.top.equalTo(backLabel.snp.bottom).offset(50)
            make.leading.equalTo(backButton.snp.leading)
        }
        view.addSubview(dateLabel)
        dateLabel.snp.makeConstraints { make in
            make.trailing.equalTo(settingsButton.snp.trailing)
            make.top.equalTo(todayLabel.snp.top)
        }
        
        view.addSubview(middleCollectionViewController.collectionView)
        middleCollectionViewController.collectionView.snp.makeConstraints { make in
            make.top.equalTo(todayLabel.snp.bottom).offset(20)
            make.width.equalTo(view.frame.width)
            make.height.equalTo(view.frame.height / 5)
        }
        view.addSubview(thisWeekLabel)
        thisWeekLabel.snp.makeConstraints { make in
            make.top.equalTo(middleCollectionViewController.collectionView.snp.bottom).offset(20)
            make.leading.equalTo(todayLabel.snp.leading)
        }
        view.addSubview(calendarImageView)
        calendarImageView.snp.makeConstraints { make in
            make.top.equalTo(thisWeekLabel.snp.top)
            make.trailing.equalTo(settingsButton.snp.trailing)
        }
        view.addSubview(bottomCollectionViewController.collectionView)
        bottomCollectionViewController.collectionView.snp.makeConstraints { make in
            make.top.equalTo(thisWeekLabel.snp.bottom).offset(20)
            make.width.equalTo(view.frame.width)
            make.height.equalTo(view.frame.height / 2.3)
        }
        view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-25)
            make.trailing.equalToSuperview().offset(-130)
        }
        view.addSubview(titleImageView)
        titleImageView.snp.makeConstraints { make in
            make.bottom.equalTo(titleLabel.snp.bottom).offset(-3)
            make.trailing.equalTo(titleLabel.snp.leading).offset(-10)
        }
    }
}



