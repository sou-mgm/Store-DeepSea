//
//  MainViewController.swift
//  DeepSea
//
//  Created by Matheus Matias on 16/02/23.
//

import UIKit

class MainViewController: UIViewController {
    
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
    
    lazy var headView = HeadView(frame: .zero)
    lazy var carouselView = CarouselView(frame: .zero, imageNames: carouselImages)
    lazy var catalogView = CatologView(frame: .zero)
    lazy var productView = ProductView(frame: .zero)
    lazy var footerView = FooterView(frame: .zero)
    
    var carouselImages: [String] = ["mar","oceano","praia1"]
    //MARK: Over functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        setupFeaturesMainView()
        initMainView()
        setupConstraintMainView()
    
    }
    
    
    //MARK: functions
    
    func setupFeaturesMainView(){
        
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
    
    
    
    
    
    
}


