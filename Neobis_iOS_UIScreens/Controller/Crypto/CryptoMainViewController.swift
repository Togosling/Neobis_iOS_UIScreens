//
//  CryptoMainViewController.swift
//  Neobis_iOS_UIScreens
//
//  Created by Тагай Абдылдаев on 10/4/23.
//

import UIKit
import SnapKit

class CryptoMainViewController: UIViewController {
    
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
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        setupViews()
    }
    
    fileprivate func setupViews() {
        
        view.addSubview(portfolioLabel)
        portfolioLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(80)
            make.leading.equalToSuperview().offset(28)
        }
        view.addSubview(settingsButton)
        settingsButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(86)
            make.trailing.equalToSuperview().offset(-28)
        }
        view.addSubview(allButton)
        allButton.snp.makeConstraints { make in
            make.top.equalTo(settingsButton.snp.bottom).offset(40)
            make.trailing.equalToSuperview().offset(-28)
        }
        
        view.addSubview(collectionViewController.collectionView)
        collectionViewController.collectionView.snp.makeConstraints { make in
            make.top.equalTo(allButton.snp.bottom).offset(10)
            make.trailing.equalToSuperview().offset(-28)
            make.leading.equalToSuperview().offset(28)
            make.bottom.equalToSuperview().offset(-100)
        }
        
    }
}
