//
//  ProductView.swift
//  DeepSea
//
//  Created by Matheus Matias on 16/02/23.
//

import UIKit

protocol ProductViewDelegate: AnyObject {
    func openProductDetails(id: Int)
}

class ProductView: UIView {

    private lazy var productView: UIView = {
        let newObj = UIView(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    private lazy var topLabel: UILabel = {
        let newObj = UILabel(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    lazy var productCollectionView  = Product(frame: .zero, products: products)
    var products: [ProductItem] = []
    weak var delegate: ProductViewDelegate?
    var sectionTitle: String = ""
    
    public init(frame: CGRect,sectionTitle:String, products:[ProductItem] ) {
        super.init(frame: frame)
        self.products = products
        self.sectionTitle = sectionTitle
        setupView()
        setupConstraint()
        productCollectionView.delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(){
        
        productView.backgroundColor = .white
        topLabel.text = sectionTitle
        topLabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        topLabel.textAlignment = .center
        topLabel.alpha = 0.7
        topLabel.tintColor = .darkGray
        
        addSubview(productView)
        productView.addSubview(topLabel)
        productView.addSubview(productCollectionView)
    }
    
    func setupConstraint(){
        productView.heightAnchor.constraint(equalToConstant: 1000).isActive = true
        productView.setAnchor(
            top: topAnchor,
            bottom: bottomAnchor,
            leading: leadingAnchor,
            trailing: trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        
        topLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        topLabel.setAnchor(
            top: productView.topAnchor,
            bottom: productCollectionView.topAnchor,
            leading: productView.leadingAnchor,
            trailing:productView.trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 25, left: 0, bottom: 15, right: 0))
        
        productCollectionView.translatesAutoresizingMaskIntoConstraints = false
        productCollectionView.setAnchor(
            top: nil,
            bottom: productView.bottomAnchor,
            leading: productView.leadingAnchor,
            trailing: productView.trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
    }
    
    
}

extension ProductView: ProductViewModelDelegate {
    func openProductDetails(id: Int) {
        self.delegate?.openProductDetails(id: id)
    }
    
    
}

