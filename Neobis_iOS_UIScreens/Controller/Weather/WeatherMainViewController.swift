//
//  WeatherMainViewController.swift
//  Neobis_iOS_UIScreens
//
//  Created by Тагай Абдылдаев on 11/4/23.
//

import UIKit

class WeatherMainViewController: UIViewController {
    
    let allImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "")
        return iv
    }()
    
    let locationLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont(name: "Overpass-Bold", size: 24)
        label.text = "Бишкек"
        return label
    }()
    
    let locationImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "")
        return iv
    }()
    
    let locationButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: ""), for: .normal)
        return button
    }()
    
    let alertButton: UIButton = {
       let button = UIButton()
        button.setImage(UIImage(named: ""), for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
    }
}
