//
//  ProductView.swift
//  DeepSea
//
//  Created by Matheus Matias on 16/02/23.
//

import UIKit

protocol ProductViewDelegate: AnyObject {
    func openProductDetails(product: ProductItem)
}

class ProductView: UIView {
    
    //MARK: Elements
    
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
    
    lazy var productCollectionView  = ProductCollectionView(frame: .zero, products: products)
    //Array para armazenar imagens recebidas da ViewController
    var products: [ProductItem] = []
    //Delegate da view
    weak var delegate: ProductViewDelegate?
    var sectionTitle: String = ""
    //Tamanho predefinido da View, que altera de acordo com a quantidade de itens
    var viewSize: CGFloat = 300
    
    //MARK: Over functions
  
    public init(frame: CGRect,sectionTitle:String, products:[ProductItem] ) {
        super.init(frame: frame)
        self.products = products
        self.sectionTitle = sectionTitle
        setupView()
        setupConstraint()
        //Defini como Delegate da collection view
        productCollectionView.delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: functions
    
    private func setupView(){
        
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
    
    private func setupConstraint(){
        
        let heightView = productView.heightAnchor.constraint(equalToConstant: viewSize)
        heightView.priority = .defaultLow
        heightView.isActive = true
        
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

//MARK: Extension Delegate
extension ProductView: ProductViewModelDelegate {
    //Ordem CollectionView -> View
    func openProductDetails(product: ProductItem) {
        self.delegate?.openProductDetails(product: product)
    }
    
    func setHeightView(value: CGFloat) {
        viewSize = value
        productView.heightAnchor.constraint(equalToConstant: viewSize + 100).isActive = true
    }
    
    
}



