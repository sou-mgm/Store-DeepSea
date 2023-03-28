//
//  CarouselLayout.swift
//  DeepSea
//
//  Created by Matheus Matias on 20/02/23.
//

import UIKit

final class CarouselLayout: UICollectionViewFlowLayout {
    
    //Realiza a configuracao do layout
    override init() {
        super.init()
        //Espacamento de itens
        self.minimumInteritemSpacing = 0
        self.minimumLineSpacing = 0
        //Direcao do scroll
        self.scrollDirection = .horizontal
        //Margens da secao
        self.sectionInset = .zero
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //As atualizações de layout ocorrem na primeira vez que a exibição da coleção apresenta seu conteúdo e sempre que o layout é invalidado explícita ou implicitamente devido a uma alteração na exibição. Durante cada atualização de layout, a exibição da coleção chama esse método primeiro para dar ao seu objeto de layout uma chance de se preparar para a próxima operação de layout.
    
    override func prepare() {
        super.prepare()
        //Se houver uma collection view
        if let collectionView = collectionView {
            //Realiza um setup da celula (cell) para que ocupe a view inteira
            //itemSize - Propriedade padrao para definir o tamanho de cada célula.
            itemSize = collectionView.frame.size
        
        }
    }
    

}
