//
//  ProductLayout.swift
//  DeepSea
//
//  Created by Matheus Matias on 26/02/23.
//

import UIKit

class ProductLayout: UICollectionViewFlowLayout {
    override init() {
        super.init()
        self.minimumInteritemSpacing = 0
        self.minimumLineSpacing = 10
        self.scrollDirection = .vertical
        self.sectionInset = .zero
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepare() {
        super.prepare()
        if let collectionView = collectionView {
            itemSize.width = collectionView.frame.width / 2.1
            itemSize.height = itemSize.width * 1.75
        }
    }
}
