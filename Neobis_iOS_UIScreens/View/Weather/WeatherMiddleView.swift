//
//  WeatherMiddleView.swift
//  Neobis_iOS_UIScreens
//
//  Created by Тагай Абдылдаев on 14/4/23.
//

import UIKit


class WeatherMiddleView: UIView {
    
    let dateLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont(name: "Overpass-Regular", size: 18)
        label.text = "Сегодня, 26 Апрель"
        label.addShadow1()
        return label
    }()
    
    let temperatureLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont(name: "Overpass-Regular", size: 100)
        label.text = "22"
        label.addShadow2()
        return label
    }()
    
    let graduceLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont(name: "Overpass-Regular", size: 72)
        label.text = "°"
        label.addShadow2()
        return label
    }()
    
    let weatherConditionLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont(name: "Overpass-Bold", size: 24)
        label.text = "Солнечно"
        label.addShadow1()
        return label
    }()
    
    let windImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "wind")
        iv.addShadow()
        return iv
    }()
    
    let windLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont(name: "Overpass-Regular", size: 18)
        label.text = "Ветер"
        label.addShadow1()
        return label
    }()
    
    let separatorLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont(name: "Raleway-Light", size: 18)
        label.text = "|"
        label.addShadow1()
        return label
    }()
    
    let windSpeedLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont(name: "Overpass-Regular", size: 18)
        label.text = "15 km/h"
        label.addShadow1()
        return label
    }()
    
    let rainImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "rain")
        iv.addShadow()
        return iv
    }()
    
    let rainLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont(name: "Overpass-Regular", size: 18)
        label.text = "Дождь"
        label.addShadow1()
        return label
    }()
    
    let separatorLabel2: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont(name: "Raleway-Light", size: 18)
        label.text = "|"
        label.addShadow1()
        return label
    }()
    
    let rainSpeedLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont(name: "Overpass-Regular", size: 18)
        label.text = "26 %"
        label.addShadow1()
        return label
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.3).cgColor
        layer.cornerRadius = 20
        layer.borderColor = UIColor(red: 186/255, green: 209/255, blue: 228/255, alpha: 1).cgColor
        layer.borderWidth = 2
        setupViews()
    }
    
    fileprivate func setupViews() {
        
        addSubview(dateLabel)
        dateLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(15)
            make.centerX.equalToSuperview()
        }
        addSubview(temperatureLabel)
        temperatureLabel.snp.makeConstraints { make in
            make.top.equalTo(dateLabel.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
        }
        addSubview(graduceLabel)
        graduceLabel.snp.makeConstraints { make in
            make.top.equalTo(temperatureLabel.snp.top)
            make.leading.equalTo(temperatureLabel.snp.trailing).offset(5)
        }
        addSubview(weatherConditionLabel)
        weatherConditionLabel.snp.makeConstraints { make in
            make.top.equalTo(temperatureLabel.snp.bottom).offset(5)
            make.centerX.equalToSuperview()
        }
        
        
        addSubview(windImageView)
        windImageView.snp.makeConstraints { make in
            make.top.equalTo(weatherConditionLabel.snp.bottom).offset(30)
            make.leading.equalToSuperview().offset(70)
        }
        
        addSubview(rainImageView)
        rainImageView.snp.makeConstraints { make in
            make.top.equalTo(windImageView.snp.bottom).offset(30)
            make.leading.equalToSuperview().offset(70)
        }
        
        addSubview(windLabel)
        windLabel.snp.makeConstraints { make in
            make.top.equalTo(windImageView.snp.top)
            make.leading.equalTo(windImageView.snp.trailing).offset(20)
        }
        
        addSubview(rainLabel)
        rainLabel.snp.makeConstraints { make in
            make.top.equalTo(rainImageView.snp.top)
            make.leading.equalTo(rainImageView.snp.trailing).offset(20)
        }
        
        addSubview(separatorLabel)
        separatorLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(windImageView.snp.top)
        }
        
        addSubview(separatorLabel2)
        separatorLabel2.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(rainImageView.snp.top)
        }
        
        addSubview(windSpeedLabel)
        windSpeedLabel.snp.makeConstraints { make in
            make.top.equalTo(windImageView.snp.top)
            make.leading.equalTo(separatorLabel.snp.trailing).offset(20)
        }
        
        addSubview(rainSpeedLabel)
        rainSpeedLabel.snp.makeConstraints { make in
            make.top.equalTo(rainImageView.snp.top)
            make.leading.equalTo(separatorLabel2.snp.trailing).offset(20)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
