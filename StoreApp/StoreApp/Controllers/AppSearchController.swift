//
//  AppSearchController.swift
//  StoreApp
//
//  Created by Andrey Bulganin on 07.09.2022.
//

import UIKit

class AppSearchController: UICollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .red       
        
    }
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
