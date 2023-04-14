//
//  CryptoMainView.swift
//  Neobis_iOS_UIScreens
//
//  Created by Тагай Абдылдаев on 14/4/23.
//

import UIKit


class CryptoMainView: UIView {
    
    let portfolioLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.09, green: 0.09, blue: 0.1, alpha: 1)
        label.font = UIFont(name: "SegoeUI-Bold", size: 32)
        label.attributedText = NSMutableAttributedString(string: "Портфолио", attributes: [NSAttributedString.Key.kern: 0.41])
        return label
    }()
    
    let settingsButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "Settings"), for: .normal)
        button.tintColor = UIColor(red: 0.725, green: 0.757, blue: 0.851, alpha: 1)
        return button
    }()
    
    let allButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("посмотреть все", for: .normal)
        button.tintColor =  UIColor(red: 0.965, green: 0.329, blue: 0.243, alpha: 1)
        button.titleLabel?.font = UIFont(name: "SegoeUI-Light", size: 14)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.86
        var buttonAtributtedText = NSMutableAttributedString(string: "посмотреть все", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        button.setAttributedTitle(buttonAtributtedText, for: .normal)
        return button
    }()
    
    let collectionViewController = CryptoCollectionViewController()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        setupViews()
    }
    
    fileprivate func setupViews() {
        
        addSubview(portfolioLabel)
        portfolioLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(flexibleHeight(to: 80))
            make.leading.equalToSuperview().offset(flexibleWidth(to: 28))
        }
        addSubview(settingsButton)
        settingsButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(flexibleHeight(to: 86))
            make.trailing.equalToSuperview().offset(-(flexibleWidth(to: 28)))
        }
        addSubview(allButton)
        allButton.snp.makeConstraints { make in
            make.top.equalTo(settingsButton.snp.bottom).offset(flexibleHeight(to: 40))
            make.trailing.equalToSuperview().offset(-(flexibleWidth(to: 28)))
        }
        
        addSubview(collectionViewController.collectionView)
        collectionViewController.collectionView.snp.makeConstraints { make in
            make.top.equalTo(allButton.snp.bottom).offset(flexibleHeight(to: 10))
            make.trailing.equalToSuperview().offset(-(flexibleWidth(to: 28)))
            make.leading.equalToSuperview().offset(flexibleWidth(to: 28))
            make.bottom.equalToSuperview().offset(-(flexibleHeight(to: 100)))
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
