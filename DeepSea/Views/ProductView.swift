//
//  ProductView.swift
//  DeepSea
//
//  Created by Matheus Matias on 16/02/23.
//

import UIKit

class ProductView: UIView {

    private lazy var productView: UIView = {
        let newObj = UIView(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(productView)
        productView.backgroundColor = .yellow
        productView.heightAnchor.constraint(equalToConstant: 1000).isActive = true
        productView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        productView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        productView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        productView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
