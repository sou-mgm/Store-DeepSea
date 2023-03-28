//
//  Product.swift
//  DeepSea
//
//  Created by Matheus Matias on 26/02/23.
//

import UIKit

protocol ProductViewModelDelegate: AnyObject {
    func openProductDetails(product: ProductItem)
    func setHeightView(value: CGFloat)
}

class ProductCollectionView: UIView{
    
    private lazy var collectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: ProductLayout()
    )
    
    var products: [ProductItem] = []
    weak var delegate: ProductViewModelDelegate?
    var contentViewSize: CGFloat = 0 
    
    init(frame: CGRect,products: [ProductItem]) {
         super.init(frame: frame)
        self.products = products
        setupView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.showsVerticalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        
        //Add view
        addSubview(collectionView)
        collectionView.backgroundColor = .clear
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        //Constrains
        collectionView.setAnchor(
            top: topAnchor,
            bottom: bottomAnchor,
            leading: leadingAnchor,
            trailing: trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5))
        
        
        collectionView.register(ProductViewCell.self, forCellWithReuseIdentifier: "cell")
    }
}

extension ProductCollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? ProductViewCell
        cell?.productCell = products[indexPath.row]
        contentViewSize = collectionView.contentSize.height
        self.delegate?.setHeightView(value: contentViewSize)
        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.delegate?.openProductDetails(product: products[indexPath.row])
    }
    
}
