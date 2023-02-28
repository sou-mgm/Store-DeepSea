//
//  CollectionViewCell.swift
//  DeepSea
//
//  Created by Matheus Matias on 20/02/23.
//

import UIKit

class CatalogViewCell: UICollectionViewCell {
    
    //Realiza o set das informacoes
    var catalogItem: CatalogItem? {
        didSet {
            if let catolog = catalogItem {
                lbCatalogName.text = catolog.name
                ivCatalog.image = UIImage(named: catolog.imageName)
            }
        }
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setupView()
        setupConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var ivCatalog: UIImageView = {
        let newObj = UIImageView(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    private lazy var lbCatalogName: UILabel = {
        let newObj = UILabel(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    func setupView() {
        contentView.backgroundColor = .clear
        contentView.addSubview(ivCatalog)
        contentView.addSubview(lbCatalogName)
        
        ivCatalog.contentMode = .scaleAspectFit
        ivCatalog.layer.cornerRadius = 54
        ivCatalog.layer.masksToBounds = true
        ivCatalog.layer.borderColor = UIColor.lightGray.cgColor
        ivCatalog.layer.borderWidth = 1
    
        lbCatalogName.tintColor = UIColor(named: "deepBlue")
        //lbCatalogName.minimumScaleFactor = 0.5
    }
    
    func setupConstrains(){
        
        contentView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1).isActive = true
        contentView.setAnchor(
            top: topAnchor,
            bottom: bottomAnchor,
            leading: leadingAnchor,
            trailing: trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        
        ivCatalog.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        ivCatalog.heightAnchor.constraint(equalToConstant: 108).isActive = true
        ivCatalog.widthAnchor.constraint(equalTo: ivCatalog.heightAnchor).isActive = true
        
        lbCatalogName.heightAnchor.constraint(equalToConstant: 15).isActive = true
        lbCatalogName.centerXAnchor.constraint(equalTo: ivCatalog.centerXAnchor).isActive = true
        lbCatalogName.topAnchor.constraint(equalTo: ivCatalog.lastBaselineAnchor, constant: 1).isActive = true
        lbCatalogName.bottomAnchor.constraint(greaterThanOrEqualTo: contentView.bottomAnchor,constant: 0).isActive = true
        
        
    }

    
    
    
    
    
}
