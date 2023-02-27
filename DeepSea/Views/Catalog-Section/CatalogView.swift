//
//  CatologView.swift
//  DeepSea
//
//  Created by Matheus Matias on 16/02/23.
//

import UIKit

//Protocolo para abertura de catalogo de produtos
//Será ADD na View Controller que instanciar a view
protocol CatalogViewDelegate: AnyObject {
    func openProductByCategory(name: String)
}

final class CatalogView: UIView {
   
    //MARK: Objects
    
    
    // Main View
    private lazy var catalogView: UIView = {
        let newObj = UIView(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    //Instacia uma Collection View
    lazy var catalog = Catalog(frame: .zero, catalogs: catalogs)
    //Array de itens
    var catalogs: [CatalogItem] = []
    //Delegate da collection view
    weak var delegate: CatalogViewDelegate?
    
    //MARK: Over functions
    
    //Init
    public init(frame: CGRect, catalogs: [CatalogItem]) {
        super.init(frame: frame)
        self.catalogs = catalogs
        setupFeatures()
        startView()
        setupConstraint()
        //Defini o Delegate da collection view
        catalog.delegate = self
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
//MARK: Extension
//Extensao - Delegate da collection view
extension CatalogView: CatalogDelegateVM {
    //Add funcao
    func openCatalog(name: String) {
        //"Repassa a acao feita na collection view para a View Controller que estiver instanciando esta UIView"
        self.delegate?.openProductByCategory(name: name)
    }
    
    
}
