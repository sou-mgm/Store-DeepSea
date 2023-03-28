//
//  ProductLayout.swift
//  DeepSea
//
//  Created by Matheus Matias on 26/02/23.
//

import UIKit

class ProductLayout: UICollectionViewFlowLayout {
    //Realiza a configuracao do layout
    override init() {
        super.init()
        //Espacamento de itens
        self.minimumInteritemSpacing = 0
        self.minimumLineSpacing = 12
        //Direcao do scroll
        self.scrollDirection = .vertical
        //Margens da secao
        self.sectionInset = .zero
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepare() {
        super.prepare()
        if let collectionView = collectionView {
            itemSize.width = collectionView.frame.width / 2.05
            itemSize.height = itemSize.width * 1.75
        }
    }
}




