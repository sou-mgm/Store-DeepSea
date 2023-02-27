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
    lazy var headView = HeadView(frame: .zero)
    lazy var carouselView = CarouselView(frame: .zero, imageNames: carouselImages)
    lazy var catalogView = CatalogView(frame: .zero, catalogs: catalogs)
    lazy var productView = ProductView(frame: .zero, sectionTitle: "MAIS VENDIDOS", products: products)
    lazy var footerView = FooterView(frame: .zero)
    
    var carouselImages: [String] = ["mar","oceano","praia1"]
    var catalogs: [CatalogItem] = []
    var products: [ProductItem] = []
    
    //MARK: Over functions

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        //Cria os itens 
        createCatalogs()
        createProducts()
        //Realiza set das features
        setupNavigationBar()
        setupFeaturesMainView()
        initMainView() //Inicializa Views
        setupConstraintMainView() //Realiza set das constrains
        //Defini como delegate
        catalogView.delegate = self
        productView.delegate = self
    }
    

    //MARK: functions
    
    func setupNavigationBar(){
        let font = UIFont.systemFont(ofSize: 20, weight: .bold)
        
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: font]
        navigationController?.navigationBar.topItem?.title = "Deep Blue"
        
        let btAccount = UIBarButtonItem(image: UIImage(systemName: "person.fill"), style: .plain, target: self, action: #selector(openAccountViewController))
        let btSearch = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"), style: .plain, target: self, action: #selector(openSearchViewController))
        let btCart = UIBarButtonItem(image: UIImage(systemName: "cart.fill"), style: .plain, target: self, action: #selector(openCartViewController))
        
        self.navigationItem.rightBarButtonItems = [btCart,btSearch]
        self.navigationItem.leftBarButtonItem = btAccount
    }
    
    func setupFeaturesMainView(){
        
        scrollView.showsVerticalScrollIndicator = false
        mainStackView.axis = .vertical
        mainStackView.spacing = 0
        containerView.backgroundColor = .white
        mainStackView.backgroundColor = .white
        
    }
    
    func initMainView(){
        
        scrollView.addSubview(containerView)
        containerView.addSubview(mainStackView)
        mainStackView.addArrangedSubview(headView)
        mainStackView.addArrangedSubview(carouselView)
        mainStackView.addArrangedSubview(catalogView)
        mainStackView.addArrangedSubview(productView)
        mainStackView.addArrangedSubview(footerView)
    }
    
    
    func setupConstraintMainView(){
        
        
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
    
    
    @objc func openAccountViewController(){
        
    }
    
    @objc func openCartViewController(){
        
    }
    @objc func openSearchViewController(){
        
    }
}



//Add protocolo para abertura de tela 
extension MainViewController: CatalogViewDelegate, ProductViewDelegate {
    func openProductDetails(id: Int) {
        let searchVC = SearchViewController()
        navigationController?.pushViewController(searchVC, animated: true)
    }
    
   
    func openProductByCategory(name: String) {
        let searchVC = SearchViewController()
        navigationController?.pushViewController(searchVC, animated: true)
    }
    
}

extension MainViewController {
    func createCatalogs() {
        catalogs.append(CatalogItem(id: 412, name: "Novidades", imageName: "novidades"))
        catalogs.append(CatalogItem(id: 632, name: "Masculino", imageName: "masculino"))
        catalogs.append(CatalogItem(id: 324, name: "Feminino", imageName: "feminino"))
        catalogs.append(CatalogItem(id: 856, name: "Infantil", imageName: "infantil"))
        catalogs.append(CatalogItem(id: 124, name: "Acessórios", imageName: "acessorios"))
    }
    
    func createProducts(){
        
        products.append(ProductItem(
        id: 65759,
        name: "Short Thasos",
        price: 249.99,
        imageName: ["thasos-off","Short-thasos-off-frente"],
        description: "O short Thasos é feito com tecido certificado com um mix de fibras muito especiais; algodão, modal e linho, três fibras vegetais que proporcionam conforto, durabilidade e que permitem que sua pele respire. Além da excelente matéria prima, essa peça possui corte de alfaiataria, bolso faca e design clean, para um verão leve e sofisticado",
        measurementChart: [
        "PP – Cintura: 68cm Quadril: 102cm Comprimento: 38cm",
        "P – Cintura: 72cm Quadril: 106cm Comprimento: 39cm",
        "M – Cintura: 76cm Quadril: 110cm Comprimento: 40cm",
        "G – Cintura: 80cm Quadril: 114cm Comprimento: 41cm",
        "GG – Cintura: 84cm Quadril: 118cm Comprimento: 42cm"
        ],
        size: ["PP","P","M","G","GG"],
        category: "Fem",
        itsNew: false,
        itsTopProduct: false
        ))

        products.append(ProductItem(
        id: 65751,
        name: "Short Komilio",
        price: 249.99,
        imageName: ["komilio-areia","short_komilio_off_frente"],
        description: "O short Komilio é feito em malha texturizada, produzida com fio 100% algodão certificado. Possui cordão em algodão cru, bolsos frontais, detalhe frontal em vinco e cós de elástico que proporciona ainda mais conforto. É uma peça atemporal e divertida, podendo acompanhar você nos mais diversos moods de verão.",
        measurementChart: [
        "PP – Cintura: 68cm Quadril: 92cm Comprimento 34cm",
        "P – Cintura: 72cm Quadril: 96cm Comprimento 36cm",
        "M – Cintura: 76cm Quadril: 100cm Comprimento 38cm",
        "G – Cintura: 80m Quadril: 104cm Comprimento 40cm",
        "GG – Cintura: 84cm Quadril: 108cm Comprimento 42cm"
        ],
        size: ["PP","P","M","G","GG"],
        category: "Fem",
        itsNew: true,
        itsTopProduct: false
        ))
    }
}


