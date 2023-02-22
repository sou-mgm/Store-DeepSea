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
    
    private lazy var lbBrandName: UILabel = {
        let newObj = UILabel(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    private lazy var logoView: UIView = {
        let newObj = UIView(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    private lazy var ivLogo: UIImageView = {
        let newObj = UIImageView(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    private lazy var btAccount: UIButton = {
        let newObj = UIButton(type:.system)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    private lazy var btSearch: UIButton = {
        let newObj = UIButton(type: .system)
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
    func setupFeatures(){
        // Head View
        headView.backgroundColor = .white
        
        //Logo view
        logoView.backgroundColor = .clear
        ivLogo.image = UIImage(named: "logo")
        ivLogo.contentMode = .scaleAspectFit
        
        
        // Label
        lbBrandName.text = "Deep Sea"
        lbBrandName.font = .boldSystemFont(ofSize: 17)
        lbBrandName.tintColor = UIColor(named: "deepBlue")
        
        //Buttons
        let imagePointSize = UIImage.SymbolConfiguration(pointSize: 18)
        //Account
        btAccount.setTitle("", for: .normal)
        btAccount.setImage(UIImage(systemName: "person.fill", withConfiguration: imagePointSize ), for: .normal)
        btAccount.addTarget(self, action: #selector(openAccountView), for: .touchUpInside)
        
        //Search
        btSearch.setTitle("", for: .normal)
        btSearch.setImage(UIImage(systemName: "magnifyingglass", withConfiguration: imagePointSize ), for: .normal)
        btSearch.addTarget(self, action: #selector(openSearchView), for: .touchUpInside)
        
    }
    
    func startView(){
        addSubview(headView)
        headView.addSubview(btAccount)
        headView.addSubview(btSearch)
        headView.addSubview(lbBrandName)
        headView.addSubview(logoView)
        logoView.addSubview(ivLogo)
        
        
    }
    func setupConstraint(){
        
        //HeadView
        headView.heightAnchor.constraint(equalToConstant: 90).isActive = true
        headView.setAnchor(
            top: topAnchor,
            bottom: bottomAnchor,
            leading: leadingAnchor,
            trailing: trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        
        //Logo View
        logoView.topAnchor.constraint(equalTo: headView.topAnchor, constant: 1).isActive = true
        logoView.centerXAnchor.constraint(equalTo: headView.centerXAnchor).isActive = true
        logoView.widthAnchor.constraint(equalTo: logoView.heightAnchor, multiplier: 105/64).isActive = true
        
        
        //Image Logo
        ivLogo.setAnchor(
            top: logoView.topAnchor,
            bottom: logoView.bottomAnchor,
            leading: logoView.leadingAnchor,
            trailing: logoView.trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        
        
        // Brand Name
        lbBrandName.setAnchor(
            top: logoView.bottomAnchor,
            bottom: bottomAnchor,
            leading: nil,
            trailing: nil,
            priority: .required,
            constant: UIEdgeInsets(top: 1, left: 0, bottom: 1, right: 0))
        lbBrandName.centerXAnchor.constraint(equalTo: logoView.centerXAnchor).isActive = true
        lbBrandName.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        
        //Button Account
        
        btAccount.centerYAnchor.constraint(equalTo: headView.centerYAnchor).isActive = true
        btAccount.heightAnchor.constraint(equalToConstant: 55).isActive = true
        btAccount.widthAnchor.constraint(equalTo: heightAnchor, multiplier: 0.65).isActive = true
        btAccount.setAnchor(
            top: nil,
            bottom: nil,
            leading: headView.leadingAnchor,
            trailing: nil,
            priority: .required,
            constant: UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0))
        
        
        //Button Search
        
        btSearch.heightAnchor.constraint(equalToConstant: 55).isActive = true
        btSearch.widthAnchor.constraint(equalTo: heightAnchor, multiplier: 0.65).isActive = true
        btSearch.centerYAnchor.constraint(equalTo: btAccount.centerYAnchor).isActive = true
        btSearch.setAnchor(
            top: nil,
            bottom: nil,
            leading: nil,
            trailing: headView.trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 15))
        
    }
    
    @objc func openAccountView(){
            }
    
    @objc func openSearchView(){
      
    }
    
}
