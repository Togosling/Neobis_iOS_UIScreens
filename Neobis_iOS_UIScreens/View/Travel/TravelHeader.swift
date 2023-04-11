//
//  TravelHeader.swift
//  Neobis_iOS_UIScreens
//
//  Created by Тагай Абдылдаев on 10/4/23.
//

import UIKit

class TravelHeader: UICollectionReusableView {
    
    let firstLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont(name: "NotoSans-Medium", size: 24)
        label.textAlignment = .center
        label.text = "Путешествуйте"
        return label
    }()
    
    let secondLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont(name: "NotoSans-Medium", size: 24)
        label.textAlignment = .center
        label.text = "Почувствуйте прилив энергии"
        return label
    }()
    
    let thirdLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont(name: "NotoSans-Regular", size: 14)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.textAlignment = .center
        label.text = "Мы поможем вам исследовать, сравнить и забронировать впечатления - все в одном месте."
        return label
    }()
    
    let searchBar: UISearchBar = {
        let search = UISearchBar()
        search.searchBarStyle = .minimal
        search.placeholder = "Куда хотите поехать?"
        search.searchTextField.font = UIFont(name: "NotoSans-Regular", size: 12)
        return search
    }()

    override init(frame: CGRect) {
        super .init(frame: frame)
            
        setupViews()
        
    }
    
    fileprivate func setupViews() {
        
        
        let overallStackView = UIStackView(arrangedSubviews: [firstLabel, secondLabel, thirdLabel, searchBar])
        overallStackView.axis = .vertical
        overallStackView.spacing = 10
        
        addSubview(overallStackView)
        overallStackView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(16)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
        }
        
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
