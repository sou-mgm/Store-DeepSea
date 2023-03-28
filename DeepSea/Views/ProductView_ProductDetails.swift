//
//  productView_ProductDetails.swift
//  DeepSea
//
//  Created by Matheus Matias on 22/03/23.
//

import UIKit

final class ProductView_ProductDetails: UIView {
    
    
    //MARK: Elements
    private lazy var productView: UIView = {
        let newObj = UIView(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    private lazy var carouselCV = CarouselCollectionView(frame: .zero, images: imageNames, autoScroll: false)
    
    
    private lazy var productName: UILabel = {
        let newObj = UILabel(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    
    
    
    var imageNames: [String] = []
    
    
    
    //MARK: Over functions
    public init(frame: CGRect, imageNames: [String]) {
        super.init(frame: frame)
        self.imageNames = imageNames
        setupFeatures()
        startView()
        setupConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK: functions
    
    private func setupFeatures(){
        productView.backgroundColor = .white
    }
    private func startView(){
        addSubview(productView)
        productView.addSubview(carouselCV)
    }
    private func setupConstrains(){
        productView.heightAnchor.constraint(equalToConstant: 500).isActive = true
        productView.setAnchor(
            top: topAnchor,
            bottom: bottomAnchor,
            leading: leadingAnchor,
            trailing: trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 15, left: 0, bottom: 0, right: 0))
        
        carouselCV.translatesAutoresizingMaskIntoConstraints = false
        carouselCV.setAnchor(
            top: productView.topAnchor,
            bottom: productView.bottomAnchor,
            leading: productView.leadingAnchor,
            trailing: productView.trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
    }
    
    
    

}


