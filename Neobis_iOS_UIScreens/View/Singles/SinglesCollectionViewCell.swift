//
//  SinglesCollectionViewCell.swift
//  Neobis_iOS_UIScreens
//
//  Created by Тагай Абдылдаев on 9/4/23.
//

import UIKit
import SnapKit

class SinglesCollectionViewCell: UICollectionViewCell {
    
    var textFirst = true
    
    var serials: Serials? {
        didSet {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineHeightMultiple = 0.97
            namelabel.attributedText = NSMutableAttributedString(string: serials?.name ?? "", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
            descriptionLabel.attributedText = NSMutableAttributedString(string: serials?.description ?? "", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
            imageView.image = UIImage(named: serials?.image ?? "")
        }
    }
    
    let namelabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = .systemFont(ofSize: 30)
        label.textAlignment = .center
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = .systemFont(ofSize: 16)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(100)
        }
        return iv
    }()
    
    let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .black
        button.setImage(UIImage(named: "right"), for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        layer.borderWidth = 1
        layer.borderColor = UIColor(red: 0.854, green: 0.854, blue: 0.854, alpha: 1).cgColor
        
        setupViews()
    }
    
    fileprivate func setupViews() {
        
        let labelStackView = UIStackView(arrangedSubviews: [namelabel, descriptionLabel])
        labelStackView.spacing = 4
        labelStackView.axis = .vertical
        labelStackView.alignment = .leading
        
        var overallStackView = UIStackView()
        
        
        overallStackView = UIStackView(arrangedSubviews: [labelStackView, imageView, nextButton])
        
        
        overallStackView.axis = .horizontal
        overallStackView.spacing = 16
        
        addSubview(overallStackView)
        overallStackView.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(26)
            make.trailing.equalToSuperview().offset(-26)
        }
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
