//
//  Carousel.swift
//  DeepSea
//
//  Created by Matheus Matias on 20/02/23.
//

import UIKit

class Carousel: UIView {
    
    //MARK: Elements
    
    private lazy var collectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: CarouselLayout()
    )
    
    var imageNames: [String] = []
    var selectedIndex: Int = 0
    private var timer: Timer?
    
    
    //MARK: Over functions
    
    public init(frame: CGRect,images: [String]){
        super.init(frame: frame)
        self.imageNames = images
        setupView()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: functions
    
    
    private func setupView(){
        
        //Setup padrao
        collectionView.backgroundColor = .clear
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.isUserInteractionEnabled = true
        collectionView.isPagingEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
        
        // Add View
        addSubview(collectionView)
        
        //Defini Reuse Cell
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        //Constrains
        collectionView.setAnchor(
            top: topAnchor,
            bottom: bottomAnchor,
            leading: leadingAnchor,
            trailing: trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        
        //Temporizador
        scheduleTimerIfNeeded()
    }
    
    deinit {
        timer?.invalidate()
    }
    
    // Programacao horario da troca de imagens
    private func scheduleTimerIfNeeded(){
        guard imageNames.count > 1 else {return}
            timer?.invalidate()
            timer = Timer.scheduledTimer(withTimeInterval: 7.0, repeats: true, block: { [weak self] _ in
                self?.selectNext()
            })
            
         
    }
    
    
    private func selectNext(){
        selectItem(at: selectedIndex + 1)
    }
    
    private func selectItem(at index: Int){
        //Se imageNames.count for maior que o index passado na entrada, subentende que a imagem existe, logo let index = index, se nao let index = 0
        let index = imageNames.count > index ? index : 0
        // Verifica se a variavel selectedIndex é igual a index, se for, nao há o que alterar
        //Se for diferente, significa que todas as imagens já foram passadas, logo...
        guard selectedIndex != index else {return}
        //SelectedIndex volta a zero
        selectedIndex = index
        //A collection view retorna a primeira imagem
        collectionView.scrollToItem(at: IndexPath(item: selectedIndex, section: 0), at:.centeredHorizontally, animated: true)
    
    }
    
    
    
    
    
}

extension Carousel: UICollectionViewDelegate,UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        let imageView: UIImageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: imageNames[indexPath.row])
        
        cell.contentView.addSubview(imageView)
        
        imageView.setAnchor(
            top: cell.topAnchor,
            bottom: cell.bottomAnchor,
            leading: cell.leadingAnchor,
            trailing: cell.trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        
        
        return cell
    }
    
    
}

