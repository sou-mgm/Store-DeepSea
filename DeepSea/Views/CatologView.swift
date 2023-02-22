//
//  CatologView.swift
//  DeepSea
//
//  Created by Matheus Matias on 16/02/23.
//

import UIKit

final class CatologView: UIView {

    private lazy var catalogView: UIView = {
        let newObj = UIView(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    lazy var catalog = Catalog(frame: .zero)
    
    //MARK: Over functions
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupFeatures()
        startView()
        setupConstraint()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: functions
    
    func setupFeatures(){
        catalogView.backgroundColor = .white
        catalog.backgroundColor = .clear
        
        
    }
    func startView(){
        addSubview(catalogView)
        catalogView.addSubview(catalog)
    }
    func setupConstraint(){
        
        catalogView.heightAnchor.constraint(equalToConstant: 130).isActive = true
        catalogView.setAnchor(
            top: topAnchor,
            bottom: bottomAnchor,
            leading: leadingAnchor,
            trailing: trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        
        catalog.translatesAutoresizingMaskIntoConstraints = false
        catalog.setAnchor(
            top: catalogView.topAnchor,
            bottom: catalogView.bottomAnchor,
            leading: catalogView.leadingAnchor,
            trailing: catalogView.trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
    }
}
