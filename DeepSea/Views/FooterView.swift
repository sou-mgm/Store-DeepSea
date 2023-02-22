//
//  FooterView.swift
//  DeepSea
//
//  Created by Matheus Matias on 16/02/23.
//

import UIKit

class FooterView: UIView {

    private lazy var footerView: UIView = {
        let newObj = UIView(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(footerView)
        footerView.backgroundColor = .brown
        footerView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        footerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        footerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        footerView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        footerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
