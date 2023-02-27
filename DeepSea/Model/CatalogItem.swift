//
//  Catalog.swift
//  DeepSea
//
//  Created by Matheus Matias on 20/02/23.
//

import UIKit

class CatalogItem {
    var id: Int  //ID
    var name: String  //Nome do Item de Catalogo
    var imageName: String //Nome da imagem
    
    init(id: Int, name: String, imageName: String) {
        self.id = id
        self.name = name
        self.imageName = imageName
    }
    
    
}
