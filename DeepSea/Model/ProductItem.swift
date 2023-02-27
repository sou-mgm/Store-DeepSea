//
//  ProductItem.swift
//  DeepSea
//
//  Created by Matheus Matias on 26/02/23.
//

import UIKit

class ProductItem {
    var id:Int //ID
    var name:String //Nome
    var price:Float //Preco
    var imageName: [String]
    var description:String //Descricao
    var measurementChart:[String] //Tabela de medidas
    var size:[String] //Tamanhos
    var category: String
    var itsNew:Bool //Se é novidade
    var itsTopProduct:Bool //Se é mais vendido
    
    init(id: Int, name: String, price: Float, imageName: [String], description: String, measurementChart: [String], size: [String], category: String, itsNew: Bool, itsTopProduct: Bool) {
        self.id = id
        self.name = name
        self.price = price
        self.imageName = imageName
        self.description = description
        self.measurementChart = measurementChart
        self.size = size
        self.category = category
        self.itsNew = itsNew
        self.itsTopProduct = itsTopProduct
    }
}

extension ProductItem {
    func getFormattedPrice() -> String {
        let price = price
        let formatter = NumberFormatter()
        formatter.currencySymbol = "R$"
        formatter.numberStyle = .currency
        formatter.alwaysShowsDecimalSeparator = true
        return formatter.string(for: price)!
    }
}
