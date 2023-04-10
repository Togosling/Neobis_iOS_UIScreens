//
//  FinanceCollectionViewContorller.swift
//  Neobis_iOS_UIScreens
//
//  Created by Тагай Абдылдаев on 10/4/23.
//

import UIKit

class FinanceCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let cellId = "cellId"
    
    let items = [Finance(imageName: "home_alt_fill", category: "Дом", money: "$321", spentOn: "Продукты", color: UIColor(red: 1, green: 0.766, blue: 0.158, alpha: 1)),
                 Finance(imageName: "tag", category: "Покупки", money: "$574", spentOn: "Одежда", color: UIColor(red: 0.236, green: 0, blue: 0.621, alpha: 1)),
                 Finance(imageName: "happy", category: "Транспорт", money: "$124", spentOn: "Такси", color: UIColor(red: 0.612, green: 0.78, blue: 0.255, alpha: 1)),
                 Finance(imageName: "heart_fill", category: "Здоровье", money: "$765", spentOn: "Лечение", color: UIColor(red: 0.756, green: 0.253, blue: 0.8, alpha: 1)),
                 Finance(imageName: "cookie", category: "Фитнес", money: "$324", spentOn: "Тренировки", color: UIColor(red: 0.121, green: 0.525, blue: 1, alpha: 1)),
                 Finance(imageName: "mail", category: "Счета", money: "$726", spentOn: "Комунальные", color: UIColor(red: 0.13, green: 0.755, blue: 0.892, alpha: 1)),
                 Finance(imageName: "heart_fill", category: "Ресторан", money: "$325", spentOn: "Ужин", color: UIColor(red: 0.756, green: 0.253, blue: 0.8, alpha: 1))]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .white
        collectionView.layer.cornerRadius = 31
        
        collectionView.register(FinanceCell.self, forCellWithReuseIdentifier: cellId)
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as? FinanceCell else {return UICollectionViewCell()}
        cell.nameLabel
        cell.moneyLabel
        cell.spentOnLabel
        cell.imageView
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: collectionView.frame.width, height: collectionView.frame.height / 7.7)
    }
    
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
