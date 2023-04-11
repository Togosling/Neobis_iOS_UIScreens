//
//  WeatherMiddleCell.swift
//  Neobis_iOS_UIScreens
//
//  Created by Тагай Абдылдаев on 11/4/23.
//

import UIKit

class WeatherMiddleCell: UICollectionViewCell {
    
    let tempLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont(name: "Overpass-Regular", size: 18)
        label.text = "24°C"
        label.addShadow1()
        return label
    }()
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "cloud")
        return iv
    }()
    
    let dateLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont(name: "Overpass-Regular", size: 18)
        label.text = "17.00"
        label.addShadow1()
        return label
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
                
        setupViews()
    }
    
    fileprivate func setupViews() {
        
        addSubview(tempLabel)
        tempLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(10)
        }
        addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        addSubview(dateLabel)
        dateLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-10)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
