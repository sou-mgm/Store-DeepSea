//
//  CatalogLayout.swift
//  DeepSea
//
//  Created by Matheus Matias on 20/02/23.
//

import UIKit

final class CatalogLayout: UICollectionViewFlowLayout {
    
    //Realiza a configuracao do layout
    override init() {
        super.init()
        //Espacamento de itens
        self.minimumInteritemSpacing = 0
        self.minimumLineSpacing = 12
        //Direcao do scroll
        self.scrollDirection = .horizontal
        //Margens da secao
        self.sectionInset = .zero
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepare() {
        super.prepare()
            //Realiza um setup da celula (cell)
            //itemSize - Propriedade padrao para definir o tamanho de cada célula.
            let cellSize = CGSize(width: 125, height: 125)
            itemSize = cellSize
        }
    }
    

