//
//  CarouselView.swift
//  DeepSea
//
//  Created by Matheus Matias on 16/02/23.
//

import UIKit

final class CarouselView: UIView {
    
    //MARK: Elements
    
    private lazy var mainCarouselView: UIView = {
        let newObj = UIView(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    //Array para armazenar imagens recebidas da ViewController
    var imageNames: [String] = []
    var autoScroll: Bool = false
    
    private lazy var carousel = CarouselCollectionView(frame: .zero, images: imageNames, autoScroll: autoScroll)
    
    
    //MARK: Over functions
    
    public init(frame: CGRect, imageNames: [String],autoScroll: Bool) {
        super.init(frame: frame)
        self.imageNames = imageNames
        self.autoScroll = autoScroll
        setupFeatures()
        startView()
        setupConstraint()
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: functions
    
    private func setupFeatures(){
        mainCarouselView.backgroundColor = .clear
        carousel.backgroundColor = .clear
        carousel.layer.cornerRadius = 12
        carousel.layer.masksToBounds = true
        carousel.layer.borderColor = UIColor.lightGray.cgColor
        carousel.layer.borderWidth = 1
        
    }
    private func startView(){
        addSubview(mainCarouselView)
        mainCarouselView.addSubview(carousel)
    }
    private func setupConstraint(){
        
        mainCarouselView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        mainCarouselView.setAnchor(
            top: topAnchor,
            bottom: bottomAnchor,
            leading: leadingAnchor,
            trailing: trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        
        carousel.translatesAutoresizingMaskIntoConstraints = false
        carousel.setAnchor(
            top: mainCarouselView.topAnchor,
            bottom: mainCarouselView.bottomAnchor,
            leading: mainCarouselView.leadingAnchor,
            trailing: mainCarouselView.trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5))
       
    }
    

}
