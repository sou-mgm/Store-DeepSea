//
//  FooterView.swift
//  DeepSea
//
//  Created by Matheus Matias on 16/02/23.
//

import UIKit

protocol FooterViewDelegate: AnyObject {
    func openDoubtsViewController()
    func openFindStoreViewController()
    func openWhoWeAreViewController()
}

class FooterView: UIView {

    private lazy var footerView: UIView = {
        let newObj = UIView(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    //Stackview
    private lazy var stackView: UIStackView = {
        let newObj = UIStackView(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    //Buttons
    private lazy var btDoubts: UIButton = {
        let newObj = UIButton(type: .system)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    //Buttons
    private lazy var btFindStore: UIButton = {
        let newObj = UIButton(type: .system)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    private lazy var btWhoWeAre: UIButton = {
        let newObj = UIButton(type: .system)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    //Label
    private lazy var lbFooter: UILabel = {
        let newObj = UILabel(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    var delegate: FooterViewDelegate?
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupFeatures()
        setupView()
        setupConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupFeatures(){
        
        footerView.backgroundColor = .white
        
        stackView.axis = .vertical
        stackView.spacing = 12
        stackView.backgroundColor = .clear
        
        let tintConfig = UIColor.white
        let backgroundConfig = UIColor(named: "deepBlue")
        btDoubts.setTitle("Dúvidas", for: .normal)
        btDoubts.setTitleColor(tintConfig, for: .normal)
        btDoubts.backgroundColor = backgroundConfig
        btDoubts.layer.cornerRadius = 9
        btDoubts.layer.masksToBounds = true
        btDoubts.layer.borderWidth = 1
        btDoubts.layer.borderColor = UIColor.lightGray.cgColor
        btDoubts.addTarget(self, action: #selector(openDoubtsViewController), for: .touchUpInside)
        
        btFindStore.setTitle("Encontre uma loja", for: .normal)
        btFindStore.setTitleColor(tintConfig, for: .normal)
        btFindStore.backgroundColor = backgroundConfig
        btFindStore.layer.cornerRadius = 9
        btFindStore.layer.masksToBounds = true
        btFindStore.layer.borderWidth = 1
        btFindStore.layer.borderColor = UIColor.lightGray.cgColor
        btFindStore.addTarget(self, action: #selector(openFindStoreViewController), for: .touchUpInside)
        
        btWhoWeAre.setTitle("Quem somos", for: .normal)
        btWhoWeAre.setTitleColor(tintConfig, for: .normal)
        btWhoWeAre.backgroundColor = backgroundConfig
        btWhoWeAre.layer.cornerRadius = 9
        btWhoWeAre.layer.masksToBounds = true
        btWhoWeAre.layer.borderWidth = 1
        btWhoWeAre.layer.borderColor = UIColor.lightGray.cgColor
        btWhoWeAre.addTarget(self, action: #selector(openWhoWeAreViewController), for: .touchUpInside)
        
        
        
        
        lbFooter.text = "Clothing store - Deep Sea"
        lbFooter.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        lbFooter.alpha = 0.5
        
        
    }
    
    func setupView(){
        addSubview(footerView)
        footerView.addSubview(stackView)
        footerView.addSubview(lbFooter)
        stackView.addArrangedSubview(btDoubts)
        stackView.addArrangedSubview(btFindStore)
        stackView.addArrangedSubview(btWhoWeAre)
    }
    
    func setupConstrains(){
        footerView.heightAnchor.constraint(equalToConstant: 280).isActive = true
        footerView.setAnchor(
            top: topAnchor,
            bottom: bottomAnchor,
            leading: leadingAnchor,
            trailing: trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        
        stackView.setAnchor(
            top: footerView.topAnchor,
            bottom: nil,
            leading: footerView.leadingAnchor,
            trailing: footerView.trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 20, left: 17, bottom: 0, right: 17))
        
        btDoubts.heightAnchor.constraint(equalToConstant: 45).isActive = true
        btFindStore.heightAnchor.constraint(equalTo: btDoubts.heightAnchor).isActive = true
        btWhoWeAre.heightAnchor.constraint(equalTo: btDoubts.heightAnchor).isActive = true
        
        lbFooter.heightAnchor.constraint(equalToConstant: 20).isActive = true
        lbFooter.centerXAnchor.constraint(equalTo: footerView.centerXAnchor).isActive = true
        lbFooter.bottomAnchor.constraint(equalTo: footerView.bottomAnchor,constant: 10).isActive = true
    }
    
    @objc func openDoubtsViewController(){
        self.delegate?.openDoubtsViewController()
    }
    
    @objc func openFindStoreViewController(){
        self.delegate?.openFindStoreViewController()
    }
    
    @objc func openWhoWeAreViewController(){
        self.delegate?.openWhoWeAreViewController()
    }

}
