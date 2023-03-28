//
//  Developing.swift
//  DeepSea
//
//  Created by Matheus Matias on 28/02/23.
//

import UIKit

final class Developing: UIView {
    
    
    //MARK: Elements
    private lazy var mainView: UIView = {
        let newObj = UIView(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    
    //Label
    private lazy var topLabel: UILabel = {
        let newObj = UILabel(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    //Label
    private lazy var lbName: UILabel = {
        let newObj = UILabel(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    
    //MARK: Over functions
    
    public init(frame: CGRect, sectionName: String, colorView: UIColor) {
        super.init(frame: frame)
        mainView.backgroundColor = colorView
        topLabel.text = "Tela em desenvolvimento"
        topLabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        topLabel.textAlignment = .center
        topLabel.textColor = .white
        topLabel.alpha = 0.7
        
        lbName.text = sectionName
        lbName.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        lbName.textAlignment = .center
        lbName.textColor = .white
        lbName.alpha = 0.7
        
        startView()
        setupConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: functions
    
    
    func startView(){
        addSubview(mainView)
        mainView.addSubview(topLabel)
        mainView.addSubview(lbName)
        
    }
    func setupConstraint(){
        
        //HeadView
        mainView.setAnchor(
            top: topAnchor,
            bottom: bottomAnchor,
            leading: leadingAnchor,
            trailing: trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        
        topLabel.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        topLabel.centerYAnchor.constraint(equalTo: mainView.centerYAnchor).isActive = true
        lbName.topAnchor.constraint(equalTo: topLabel.bottomAnchor,constant: 10).isActive = true
        lbName.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        
        
    }
    
}

