//
//  FInanceViewController.swift
//  Neobis_iOS_UIScreens
//
//  Created by Тагай Абдылдаев on 10/4/23.
//

import UIKit
import SnapKit

class FinanceViewController: UIViewController {
    
    let balanceLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.062, green: 0.062, blue: 0.062, alpha: 1)
        label.font = UIFont(name: "Inter-SemiBold", size: 16)
        label.textAlignment = .center
        label.text = "Баланс"
        return label
    }()
    
    let moneyLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont(name: "Inter-Medium", size: 36)
        label.textAlignment = .center
        label.text = "$1200.89"
        return label
    }()
    
    let monthLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont(name: "Inter-Light", size: 18)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.92
        label.textAlignment = .center
        label.attributedText = NSMutableAttributedString(string: "Апрель 2020", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        return label
    }()
    
    let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .black
        button.setImage(UIImage(named: "right"), for: .normal)
        return button
    }()
    
    let backButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .black
        button.setImage(UIImage(named: "right"), for: .normal)
        button.transform = CGAffineTransform(scaleX: -1, y: 1)
        return button
    }()
    
    let collectionViewController = FinanceCollectionViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    fileprivate func setupViews() {
        
        view.addSubview(balanceLabel)
        balanceLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(view.frame.height / 14)
        }
        view.addSubview(moneyLabel)
        moneyLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(balanceLabel.snp.bottom).offset(7)
        }
        view.addSubview(monthLabel)
        monthLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(moneyLabel.snp.bottom).offset(30)
        }
        view.addSubview(nextButton)
        nextButton.snp.makeConstraints { make in
            make.top.equalTo(monthLabel.snp.top)
            make.trailing.equalToSuperview().offset(-45)
        }

        view.addSubview(backButton)
        backButton.snp.makeConstraints { make in
            make.top.equalTo(monthLabel.snp.top)
            make.leading.equalToSuperview().offset(45)

        }
        
        view.addSubview(collectionViewController.collectionView)
        collectionViewController.collectionView.snp.makeConstraints { make in
            make.top.equalTo(monthLabel.snp.bottom).offset(view.frame.height / 18)
            make.trailing.equalToSuperview()
            make.leading.equalToSuperview()
            make.bottom.equalToSuperview().offset(-100)
            
        }
    }
}
