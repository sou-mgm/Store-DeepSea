//
//  AboutView_ProductDetails.swift
//  DeepSea
//
//  Created by Matheus Matias on 22/03/23.
//

import UIKit

final class AboutView_ProductDetails: UIView {

    //MARK: Elements
    private lazy var aboutView: UIView = {
        let newObj = UIView(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    //MARK: Over functions
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupFeatures()
        startView()
        setupConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK: functions
    private func setupFeatures(){
        aboutView.backgroundColor = .blue
    }
    private func startView(){
        addSubview(aboutView)
    }
    private func setupConstrains(){
        aboutView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        aboutView.setAnchor(
            top: topAnchor,
            bottom: bottomAnchor,
            leading: leadingAnchor,
            trailing: trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
    }
    
    

}
