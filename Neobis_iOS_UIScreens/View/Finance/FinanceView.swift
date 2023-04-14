//
//  FinanceView.swift
//  Neobis_iOS_UIScreens
//
//  Created by Тагай Абдылдаев on 14/4/23.
//

import UIKit


class FinanceView: UIView {
    
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
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        setupViews()
    }

    fileprivate func setupViews() {
        
        addSubview(balanceLabel)
        balanceLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(flexibleHeight(to: 66))
        }
        addSubview(moneyLabel)
        moneyLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(balanceLabel.snp.bottom).offset(7)
        }
        addSubview(monthLabel)
        monthLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(moneyLabel.snp.bottom).offset(flexibleHeight(to: 30))
        }
        addSubview(nextButton)
        nextButton.snp.makeConstraints { make in
            make.top.equalTo(monthLabel.snp.top)
            make.trailing.equalToSuperview().offset(-(flexibleWidth(to: 45)))
        }

        addSubview(backButton)
        backButton.snp.makeConstraints { make in
            make.top.equalTo(monthLabel.snp.top)
            make.leading.equalToSuperview().offset(flexibleWidth(to: 45))

        }
        
        addSubview(collectionViewController.collectionView)
        collectionViewController.collectionView.snp.makeConstraints { make in
            make.top.equalTo(monthLabel.snp.bottom).offset(flexibleHeight(to: 50))
            make.trailing.equalToSuperview()
            make.leading.equalToSuperview()
            make.bottom.equalToSuperview().offset(-(flexibleHeight(to: 100)))
            
        }
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
