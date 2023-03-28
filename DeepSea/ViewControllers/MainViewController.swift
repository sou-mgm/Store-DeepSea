//
//  MainViewController.swift
//  DeepSea
//
//  Created by Matheus Matias on 16/02/23.
//

import UIKit

class MainViewController: UIViewController{
   
    
    
    //MARK: Elements
    
    lazy var contentViewSize = CGSize(width: self.view.frame.width, height: self.view.frame.height)
    
    //ScrollView
    private lazy var scrollView: UIScrollView = {
        let newObj = UIScrollView(frame: .zero)
        newObj.backgroundColor = .white
        // Cria a Scrollview mantendo o tamanho dela sempre em relacao ao tamanho da tela
        newObj.frame = self.view.bounds
        newObj.contentSize = contentViewSize
        return newObj
    }()
    
    //ContainerView
    private lazy var containerView: UIView = {
        let newObj = UIView(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    //Stackview
    private lazy var mainStackView: UIStackView = {
        let newObj = UIStackView(frame: .zero)
        newObj.translatesAutoresizingMaskIntoConstraints = false
        return newObj
    }()
    
    //Instancia a views 
    private lazy var headView = HeadView(frame: .zero)
    private lazy var carouselView = CarouselView(frame: .zero, imageNames: carouselImages, autoScroll: true)
    private lazy var catalogView = CatalogView(frame: .zero, catalogs: catalogs)
    private lazy var productView = ProductView(frame: .zero, sectionTitle: "MAIS VENDIDOS", products: products)
    private lazy var footerView = FooterView(frame: .zero)
    
    var carouselImages: [String] = ["mar","oceano","praia1"]
    var catalogs: [CatalogItem] = []
    var products: [ProductItem] = []
    
    //MARK: Over functions

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        //Cria os itens
        catalogs = self.loadingCatalogs()
        products = self.loadingProducts()
        //Realiza set das features
        setupNavigationBar()
        setupFeaturesMainView()
        //Inicializa as views
        initMainView()
        //Habilita constrains
        setupConstraintMainView()
        //Defini como delegate
        catalogView.delegate = self
        productView.delegate = self
        footerView.delegate = self
    }
    
    

    //MARK: functions
    
    private func setupNavigationBar(){
        let font = UIFont.systemFont(ofSize: 20, weight: .bold)
        
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: font]
        navigationController?.navigationBar.topItem?.title = "Deep Blue"
        navigationController?.navigationBar.topItem?.backButtonTitle = "Tela Inicial"
        
        let btAccount = UIBarButtonItem(image: UIImage(systemName: "person.fill"), style: .plain, target: self, action: #selector(openAccountViewController))
        let btSearch = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"), style: .plain, target: self, action: #selector(openSearchViewController))
        let btCart = UIBarButtonItem(image: UIImage(systemName: "cart.fill"), style: .plain, target: self, action: #selector(openCartViewController))
        
        self.navigationItem.rightBarButtonItems = [btCart,btSearch]
        self.navigationItem.leftBarButtonItem = btAccount
    }
    
    private func setupFeaturesMainView(){
        
        scrollView.showsVerticalScrollIndicator = false
        mainStackView.axis = .vertical
        mainStackView.spacing = 0
        containerView.backgroundColor = .white
        mainStackView.backgroundColor = .white
        
    }
    
    private func initMainView(){
        
        scrollView.addSubview(containerView)
        containerView.addSubview(mainStackView)
        mainStackView.addArrangedSubview(headView)
        mainStackView.addArrangedSubview(carouselView)
        mainStackView.addArrangedSubview(catalogView)
        mainStackView.addArrangedSubview(productView)
        mainStackView.addArrangedSubview(footerView)
    }
    
    
    private func setupConstraintMainView(){
        
        
        //ContainerView
        //Alinha o top e bottom da container view em relacao a Scrollview para permitir que a view "cresça" conforme a altura de cada view na stack, permitindo que seja feito o scroll.
        //Alinha as laterais da container view, para definir os limites conforme a tela. Logo, a view cresce na altura e permite a rolagem para cima e para baixo, mas nao para os lados.
       
        containerView.setAnchor(
            top: scrollView.topAnchor,
            bottom: scrollView.bottomAnchor,
            leading: view.leadingAnchor,
            trailing: view.trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
            
        
        //Stackview
        mainStackView.setAnchor(
            top: containerView.topAnchor,
            bottom: containerView.bottomAnchor,
            leading: containerView.leadingAnchor,
            trailing: containerView.trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
    }
    
   

    //MARK: Button funcs
    @objc func openAccountViewController(){
        let VC = AccountViewController()
        navigationController?.pushViewController(VC, animated: true)
    }
    
    @objc func openCartViewController(){
        let VC = CartViewController()
        navigationController?.pushViewController(VC, animated: true)
    }
    @objc func openSearchViewController(){
        let VC = SearchViewController()
        navigationController?.pushViewController(VC, animated: true)
    }
}



//MARK: Extesion Delegates
extension MainViewController: CatalogViewDelegate, ProductViewDelegate, FooterViewDelegate {
    //Add protocolo para abertura das telas
    //Ordem CollectionView -> View -> ViewController
    
    func openProductDetails(product: ProductItem) {
        let VC = ProductDetailsViewController()
        VC.product = product
        navigationController?.pushViewController(VC, animated: true)
    }
    
   
    func openProductByCategory(name: String) {
        let VC = ProductsByCategoryViewController()
        navigationController?.pushViewController(VC, animated: true)
    }
    
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


   


