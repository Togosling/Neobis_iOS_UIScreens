//
//  MainViewCell.swift
//  Neobis_iOS_UIScreens
//
//  Created by Тагай Абдылдаев on 9/4/23.
//

import UIKit
import SnapKit

class MainViewCell: UICollectionViewCell {
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.snp.makeConstraints { make in
            make.width.equalTo(64)
            make.height.equalTo(64)
        }
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
                
        layer.cornerRadius = 20
        layer.borderWidth = 1
        layer.borderColor = UIColor.lightGray.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 2)
        layer.shadowRadius = 2
        layer.shadowOpacity = 0.5
        layer.masksToBounds = false
        
        addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
