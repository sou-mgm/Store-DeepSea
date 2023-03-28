//
//  purchaseView_ProductDetails.swift
//  DeepSea
//
//  Created by Matheus Matias on 22/03/23.
//

import UIKit

final class PurchaseView_ProductDetails: UIView {
    

    enum buttonSize {
        case U
        case PP
        case P
        case M
        case G
        case GG
    }

    //MARK: Elements
    
    private lazy var purchaseView: UIView = {
        let newObj = UIView(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    private lazy var lbProductName: UILabel = {
        let newObj = UILabel(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    private lazy var lbProductPrice: UILabel = {
        let newObj = UILabel(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    private lazy var lbInstallmentPrice: UILabel = {
        let newObj = UILabel(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    private lazy var lbSizeTitle: UILabel = {
        let newObj = UILabel(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    private lazy var stackViewBT: UIStackView = {
        let newObj = UIStackView(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    
    private lazy var btSize_U: UIButton = {
        let newObj = UIButton(type: .system)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    private lazy var btSize_PP: UIButton = {
        let newObj = UIButton(type: .system)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    

    private lazy var btSize_P: UIButton = {
        let newObj = UIButton(type: .system)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    private lazy var btSize_M: UIButton = {
        let newObj = UIButton(type: .system)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    
    private lazy var btSize_G: UIButton = {
        let newObj = UIButton(type: .system)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    private lazy var btSize_GG: UIButton = {
        let newObj = UIButton(type: .system)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    private lazy var purchaseButton: UIButton = {
        let newObj = UIButton(type: .system)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
   
    private var newProduct: ProductItem?
    
    
    
    
    //MARK: Over functions
    public init(frame: CGRect, product: ProductItem) {
        super.init(frame: frame)
        self.newProduct = product
        setupFeatures()
        startView()
        setupConstrains()
    }
    

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK: functions
    private func setupFeatures(){
        purchaseView.backgroundColor = .green
    }
    private func startView(){
        addSubview(purchaseView)
    }
    private func setupConstrains(){
        purchaseView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        purchaseView.setAnchor(
            top: topAnchor,
            bottom: bottomAnchor,
            leading: leadingAnchor,
            trailing: trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
    }
    

}
