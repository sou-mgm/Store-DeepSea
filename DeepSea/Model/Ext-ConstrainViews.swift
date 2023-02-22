//
//  Ext-ConstrainViews.swift
//  DeepSea
//
//  Created by Matheus Matias on 16/02/23.
//

import UIKit


// Extensao fora de uso - Ainda em desenvolvimento



extension UIView {
    
    // @discardableResult - Atributo para desconsiderar caso certo cenário nao esteja sendo utilizado, evitando avisos de "unsed"
    @discardableResult
    
    // Funcao para facilitar leitura das constrains.
    //Onde ele recebe cada constrain a qual o item estará tendo relacao de margem e devolve um array de constrains.
    public func setAnchor(
        top: NSLayoutYAxisAnchor? = nil,
        bottom: NSLayoutYAxisAnchor? = nil,
        leading: NSLayoutXAxisAnchor? = nil,
        trailing: NSLayoutXAxisAnchor? = nil,
        priority: UILayoutPriority = .required,
        constant: UIEdgeInsets = .zero
    ) -> [NSLayoutConstraint] {
     
        // Cria o array de ancoras
        var anchors = [NSLayoutConstraint]()
        
        
        //Realiza o set de cada uma conforme o que foi definido como constante, e em relacao a qual ponto
        if let top = top {
            anchors.append(topAnchor.constraint(equalTo: top, constant: constant.top))
        }

        if let leading = leading {
            anchors.append(leadingAnchor.constraint(equalTo: leading, constant: constant.left))
        }

        if let bottom = bottom {
            anchors.append(bottomAnchor.constraint(equalTo: bottom, constant: -constant.bottom))
        }

        if let trailing = trailing {
            anchors.append(trailingAnchor.constraint(equalTo: trailing, constant: -constant.right))
        }


        // Add as prioridades a cada constrain
        anchors.forEach { constrainItem in
            constrainItem.priority = priority
        }
        //anchors.forEach { $0.priority = priority}  // Mesmo código, no entanto, o outro tem leitura melhor
                
        
        //Ativa as constrains
        NSLayoutConstraint.activate(anchors)

        return anchors
    }
}
