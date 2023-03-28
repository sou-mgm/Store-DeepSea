//
//  ext-LoadingItems.swift
//  DeepSea
//
//  Created by Matheus Matias on 28/02/23.
//

import UIKit

//Funcoes para carregar dados
extension UIViewController {
    

    func loadingCatalogs()->[CatalogItem]{
        var catalogs:[CatalogItem] = []
        catalogs.append(CatalogItem(id: 412, name: "Novidades", imageName: "novidades"))
        catalogs.append(CatalogItem(id: 632, name: "Masculino", imageName: "masculino"))
        catalogs.append(CatalogItem(id: 324, name: "Feminino", imageName: "feminino"))
        catalogs.append(CatalogItem(id: 856, name: "Infantil", imageName: "infantil"))
        catalogs.append(CatalogItem(id: 124, name: "Acessórios", imageName: "acessorios"))
        return catalogs
    }
    
    func loadingProducts()->[ProductItem]{
        var products:[ProductItem] = []
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
               id: 32515,
               name: "Camisa Timor Listrada",
               price: 249.99,
               imageName: ["camisa-timor-azul"],
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
               itsTopProduct: true
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
        
        products.append(ProductItem(
                id: 21431,
                name: "Saída de Praia - Verde",
                price: 249.99,
                imageName: ["campanha-saida-verde"],
                description: "O short Komilio é feito em malha texturizada, produzida com fio 100% algodão certificado. Possui cordão em algodão cru, bolsos frontais, detalhe frontal em vinco e cós de elástico que proporciona ainda mais conforto. É uma peça atemporal e divertida, podendo acompanhar você nos mais diversos moods de verão.",
                measurementChart: [
                "U – Cintura: 76cm Quadril: 100cm Comprimento 38cm",
                ],
                size: ["U"],
                category: "Fem",
                itsNew: false,
                itsTopProduct: true
                ))

        
        //
        products.append(ProductItem(
        id: 68568,
        name: "Blusa Gomati - Azul",
        price: 249.99,
        imageName: ["blusa-gomati-azul-marinho-frente","blusa-gomati-azul-marinho-vistas"],
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
               id: 76957,
               name: "Saia Cayo - Azul",
               price: 249.99,
               imageName: ["Saia-Cayo-azul-frente","Saia-Cayo-azul-bolso"],
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
               itsTopProduct: true
               ))
       

        products.append(ProductItem(
        id: 67900,
        name: "Saia Perugia",
        price: 249.99,
        imageName: ["Saia-Perugia-principal","Saia-Perugia-secundaria"],
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
        
        products.append(ProductItem(
                id: 75978,
                name: "Short komilio",
                price: 249.99,
                imageName: ["short_komilio_off_frente"],
                description: "O short Komilio é feito em malha texturizada, produzida com fio 100% algodão certificado. Possui cordão em algodão cru, bolsos frontais, detalhe frontal em vinco e cós de elástico que proporciona ainda mais conforto. É uma peça atemporal e divertida, podendo acompanhar você nos mais diversos moods de verão.",
                measurementChart: [
                "U – Cintura: 76cm Quadril: 100cm Comprimento 38cm",
                ],
                size: ["U"],
                category: "Fem",
                itsNew: false,
                itsTopProduct: true
                ))

         
        return products
    }
        
}

