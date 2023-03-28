//
//  ProductDetailsViewController.swift
//  DeepSea
//
//  Created by Matheus Matias on 28/02/23.
//

import UIKit

class ProductDetailsViewController: UIViewController {
    
    lazy var contentViewSize = CGSize(width: self.view.frame.width, height: self.view.frame.height)
    
    private lazy var scrollView: UIScrollView = {
        let newObj = UIScrollView(frame: .zero)
        newObj.backgroundColor = .white
        newObj.frame = self.view.bounds
        newObj.contentSize = contentViewSize
        return newObj
    }()
    
    
    private lazy var containerView: UIView = {
        let newObj = UIView(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    private lazy var stackView: UIStackView = {
        let newObj = UIStackView(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    private lazy var productView = ProductView_ProductDetails(frame: .zero, imageNames: product?.imageName ?? [] )
    private lazy var purchaseView = PurchaseView_ProductDetails(frame: .zero, product: product!)
    private lazy var aboutView = AboutView_ProductDetails(frame: .zero)
    private lazy var footerView = FooterView(frame: .zero)
    
    
    var product: ProductItem?
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Teste")
        print(product?.id ?? "Sem informacoes")
        setupNavigationBar()
        setupFeaturesView()
        initView()
        setupConstrainsView()
        footerView.delegate = self
        
    }
    
    func setupNavigationBar(){
        
    }
    func setupFeaturesView(){
        containerView.backgroundColor = .white
        stackView.axis = .vertical
        stackView.spacing = 0
        stackView.backgroundColor = .white
        
        
    }
    func initView(){
        view.addSubview(scrollView)
        scrollView.addSubview(containerView)
        containerView.addSubview(stackView)
        stackView.addArrangedSubview(productView)
        stackView.addArrangedSubview(purchaseView)
        stackView.addArrangedSubview(aboutView)
        stackView.addArrangedSubview(footerView)
    }
    
    func setupConstrainsView(){
        containerView.setAnchor(
            top: scrollView.topAnchor,
            bottom: scrollView.bottomAnchor,
            leading: view.leadingAnchor,
            trailing: view.trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        
        stackView.setAnchor(
            top: containerView.topAnchor,
            bottom: containerView.bottomAnchor,
            leading: containerView.leadingAnchor,
            trailing: containerView.trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
    }
    
}

extension ProductDetailsViewController: FooterViewDelegate {
    
    func openDoubtsViewController() {
        let VC = DoubtsViewController()
        present(VC, animated: true)
    }
    
    func openFindStoreViewController() {
        let VC = FindStoreViewController()
        present(VC, animated: true)
    }
    
    func openWhoWeAreViewController() {
        let VC = WhoWeAreViewController()
        present(VC, animated: true)
    }
}
