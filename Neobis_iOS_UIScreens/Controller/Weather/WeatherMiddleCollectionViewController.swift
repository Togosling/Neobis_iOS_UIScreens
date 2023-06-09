//
//  WeatherMiddleCollectionViewController.swift
//  Neobis_iOS_UIScreens
//
//  Created by Тагай Абдылдаев on 11/4/23.
//

import UIKit

class WeatherMiddleCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let cellId = "cellId"
    
    var items = [Weather(temp: "29°C", image: "Солнечно", date: "15.00"),
                 Weather(temp: "26°C", image: "Солнечно", date: "16.00"),
                 Weather(temp: "24°C", image: "cloud", date: "17.00"),
                 Weather(temp: "23°C", image: "Солнечно облачно", date: "18.00"),
                 Weather(temp: "23°C", image: "Солнечно облачно", date: "18.00"),
                 Weather(temp: "23°C", image: "Солнечно облачно", date: "18.00"),
                 Weather(temp: "23°C", image: "Солнечно облачно", date: "18.00"),
                 Weather(temp: "22°C", image: "Солнечно облачно", date: "19.00")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .clear
        collectionView.register(WeatherMiddleCell.self, forCellWithReuseIdentifier: cellId)
        
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
                layout.scrollDirection = .horizontal
            }
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as? WeatherMiddleCell else {return UICollectionViewCell()}
        cell.dateLabel.text = items[indexPath.item].date
        cell.tempLabel.text = items[indexPath.item].temp
        cell.imageView.image = UIImage(named: items[indexPath.item].image)
        
        if indexPath.item == 2 {
            cell.contentView.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.3).cgColor
            cell.contentView.layer.cornerRadius = 20
            cell.contentView.layer.borderColor = UIColor(red: 186/255, green: 209/255, blue: 228/255, alpha: 1).cgColor
            cell.contentView.layer.borderWidth = 2
        }
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: collectionView.frame.width / 5.6, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .zero
    }
    
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
