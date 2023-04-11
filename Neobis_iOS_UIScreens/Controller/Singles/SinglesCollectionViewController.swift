//
//  SinglesCollectionViewController.swift
//  Neobis_iOS_UIScreens
//
//  Created by Тагай Абдылдаев on 9/4/23.
//

import UIKit

class SinglesCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var items = [Serials(name: "SOS", description: "Mini meltdown? Get some\nHeadspace in a hurry", image: "Book"),
                 Serials(name: "One-the-Go", description: "Mindful living? Get your Headspace to go", image: "Bookshelf"),
                 Serials(name: "Classic", description: "Like it simple? Get some extra Headspace", image: "Diploma"),
                 Serials(name: "SOS", description: "Mini meltdown? Get some\nHeadspace in a hurry", image: "Globus")]
    
    let cellId = "cellId"
    let headerId = "headerID"

    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        collectionView.register(SinglesCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.register(SinglesCollectionViewHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
    
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.y > 200 {
            self.dismiss(animated: true)
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath) as? SinglesCollectionViewHeader else {return UICollectionReusableView()}
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return .init(width: view.frame.width, height: view.frame.height / 8.2)
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as? SinglesCollectionViewCell else {return UICollectionViewCell()}
        cell.serials = items[indexPath.item]
        if indexPath.item % 2 != 0 {
            cell.imageAndLabelStackView.transform = CGAffineTransform(scaleX: -1, y: 1)
            cell.imageView.transform = CGAffineTransform(scaleX: -1, y: 1)
            cell.labelStackView.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        
//        cell.layer.borderWidth = 1
//        cell.layer.borderColor = UIColor(red: 0.854, green: 0.854, blue: 0.854, alpha: 1).cgColor
//        
//        cell.layer.shadowColor = UIColor.red.cgColor
//        cell.layer.shadowOffset = CGSize(width: 0, height: 1)
//        cell.layer.shadowRadius = 10
//        cell.layer.shadowOpacity = 1
//        cell.layer.masksToBounds = true
//        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: 0).cgPath
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: (view.frame.height) / 4.6)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
