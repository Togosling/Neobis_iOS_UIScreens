//
//  FInanceViewController.swift
//  Neobis_iOS_UIScreens
//
//  Created by Тагай Абдылдаев on 10/4/23.
//

import UIKit
import SnapKit

class FinanceViewController: UIViewController {
    
    let financeView = FinanceView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(financeView)
        financeView.snp.makeConstraints { make in
            make.size.equalToSuperview()
        }
    }
}
