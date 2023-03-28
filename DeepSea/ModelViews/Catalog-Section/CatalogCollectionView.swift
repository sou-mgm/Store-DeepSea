//
//  Catalog.swift
//  DeepSea
//
//  Created by Matheus Matias on 20/02/23.
//

import UIKit

//Ordem CollectionView -> Catalogo -> ViewController
protocol CatalogDelegateVM: AnyObject {
    func openCatalog(name: String)
}
class CatalogCollectionView: UIView {
    
    //MARK: Elements
    
    private lazy var collectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: CatalogLayout()
    )
    
    var catalogs: [CatalogItem] = []
    weak var delegate: CatalogDelegateVM?
    
    //MARK: Over functions
    init(frame: CGRect, catalogs: [CatalogItem]){
        super.init(frame: frame)
        setupView()
        self.catalogs = catalogs
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: functions
    
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
        
        
        collectionView.register(CatalogViewCell.self, forCellWithReuseIdentifier: "cell")
    }

}

//MARK: Extesion DataSource
extension CatalogCollectionView: UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        catalogs.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CatalogViewCell
        cell?.catalogItem = catalogs[indexPath.row]
        
        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.delegate?.openCatalog(name: catalogs[indexPath.row].name)
    }


}

