//
//  HeadView.swift
//  DeepSea
//
//  Created by Matheus Matias on 16/02/23.
//

import UIKit

final class HeadView: UIView {
    
    //MARK: Elements
    private lazy var headView: UIView = {
        let newObj = UIView(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    
    private lazy var ivLogo: UIImageView = {
        let newObj = UIImageView(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    
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
    private func setupFeatures(){
        // Head View
        headView.backgroundColor = .white
        ivLogo.image = UIImage(named: "logo")
        ivLogo.contentMode = .scaleAspectFit
        
        
    }
    
    private func startView(){
        addSubview(headView)
        headView.addSubview(ivLogo)
        
        
    }
    private func setupConstraint(){
        
        //HeadView
        headView.heightAnchor.constraint(equalToConstant: 75).isActive = true
        headView.setAnchor(
            top: topAnchor,
            bottom: bottomAnchor,
            leading: leadingAnchor,
            trailing: trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        
        
        //Image Logo
        ivLogo.setAnchor(
            top: headView.topAnchor,
            bottom: headView.bottomAnchor,
            leading: headView.leadingAnchor,
            trailing: headView.trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        
        
    }
    
}
