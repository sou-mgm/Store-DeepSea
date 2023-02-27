//
//  ProductViewCell.swift
//  DeepSea
//
//  Created by Matheus Matias on 26/02/23.
//

import UIKit

class ProductViewCell: UICollectionViewCell {
    
    var productCell: ProductItem? {
        didSet {
            if let productCell = productCell {
                ivProduct.image = UIImage(named: productCell.imageName[0])
                lbName.text = productCell.name
                lbPrice.text = productCell.getFormattedPrice()
                
            }
        }
    }
    
    private lazy var ivProduct: UIImageView = {
        let newObj = UIImageView(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    private lazy var lbName: UILabel = {
        let newObj = UILabel(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    private lazy var lbPrice: UILabel = {
        let newObj = UILabel(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(){
        contentView.backgroundColor = .clear
        contentView.layer.cornerRadius = 9
        contentView.layer.masksToBounds = true
        contentView.layer.borderColor = UIColor.lightGray.cgColor
        contentView.layer.borderWidth = 1
        
        ivProduct.layer.cornerRadius = 9
        ivProduct.layer.masksToBounds = true
        ivProduct.contentMode = .scaleAspectFill
        
        let tintConfig = UIColor.darkGray
        lbName.font = UIFont.systemFont(ofSize: 20)
        lbName.textColor = tintConfig
        lbPrice.font = UIFont.systemFont(ofSize: 17)
        lbPrice.textColor = tintConfig
        
        
        contentView.addSubview(ivProduct)
        contentView.addSubview(lbName)
        contentView.addSubview(lbPrice)
    }
    func setupConstrains(){
        
        //contentView
        
        contentView.setAnchor(
            top: topAnchor,
            bottom: bottomAnchor,
            leading: leadingAnchor,
            trailing: trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        
        //ivProduct
        ivProduct.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.78).isActive = true
        ivProduct.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 1).isActive = true
        ivProduct.setAnchor(
            top: contentView.topAnchor,
            bottom: nil,
            leading: contentView.leadingAnchor,
            trailing: nil,
            priority: .required,
            constant: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))

        
        //lbName
        lbName.setAnchor(
            top: ivProduct.bottomAnchor,
            bottom: lbPrice.topAnchor,
            leading: contentView.leadingAnchor,
            trailing: contentView.trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 1, left: 5, bottom: 1, right: 5))

        //lbPrice
        lbPrice.heightAnchor.constraint(equalToConstant: 21).isActive = true
        lbPrice.setAnchor(
            top: nil,
            bottom: contentView.bottomAnchor,
            leading: lbName.leadingAnchor,
            trailing: lbName.trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 0, left: 0, bottom: 1, right: 0))
        
    }
}
