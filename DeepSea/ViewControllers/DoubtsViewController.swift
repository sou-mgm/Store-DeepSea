//
//  DoubtsViewController.swift
//  DeepSea
//
//  Created by Matheus Matias on 28/02/23.
//

import UIKit

class DoubtsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let developing = Developing(frame: .zero, sectionName: "Dúvidas", colorView: UIColor(named: "deepBlue") ?? .white)
        view.addSubview(developing)
        developing.translatesAutoresizingMaskIntoConstraints = false
        developing.setAnchor(
            top: view.topAnchor,
            bottom: view.bottomAnchor,
            leading: view.leadingAnchor,
            trailing: view.trailingAnchor,
            priority: .required,
            constant: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        
    }

}
