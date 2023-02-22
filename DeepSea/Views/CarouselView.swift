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
    
    var imageNames: [String] = []
    
    lazy var carousel = Carousel(frame: .zero, images: imageNames)
    
    
    //MARK: Over functions
    
    public init(frame: CGRect, imageNames: [String]) {
        super.init(frame: frame)
        self.imageNames = imageNames
        setupFeatures()
        startView()
        setupConstraint()
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: functions
    
    func setupFeatures(){
        mainCarouselView.backgroundColor = .white
        carousel.backgroundColor = .clear
        carousel.layer.cornerRadius = 12
        carousel.layer.masksToBounds = true 
        
    }
    func startView(){
        addSubview(mainCarouselView)
        mainCarouselView.addSubview(carousel)
    }
    func setupConstraint(){
        
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
            constant: UIEdgeInsets(top: 13, left: 13, bottom: 13, right: 13))
       
    }
    

}
