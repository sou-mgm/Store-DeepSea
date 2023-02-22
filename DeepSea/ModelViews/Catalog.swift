//
//  Catalog.swift
//  DeepSea
//
//  Created by Matheus Matias on 20/02/23.
//

import UIKit

class Catalog: UIView {
    
    private lazy var collectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: CatalogLayout()
    )
    
    var catalogs: [CatalogItem] = []
    
    override init(frame: CGRect){
        super.init(frame: frame)
        createCatalogs()
        setupView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createCatalogs() {
        catalogs.append(CatalogItem(name: "Novidades", imageName: "novidades"))
        catalogs.append(CatalogItem(name: "Masculino", imageName: "masculino"))
        catalogs.append(CatalogItem(name: "Feminino", imageName: "feminino"))
        catalogs.append(CatalogItem(name: "Infantil", imageName: "infantil"))
        catalogs.append(CatalogItem(name: "Acessórios", imageName: "acessorios"))
    }
    
    func setupView(){
        
        //Setup padrao
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.showsVerticalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .clear
        
        //Add view
        addSubview(collectionView)
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        //Constrains
        collectionView.setAnchor(
            top: topAnchor,
            bottom: bottomAnchor,
            leading: leadingAnchor,
            trailing: trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        
        
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "cell")
    }

}

extension Catalog: UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        catalogs.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionViewCell
        print(catalogs.count)
        cell?.catalogItem = catalogs[indexPath.row]
        
        return cell!
    }


}
