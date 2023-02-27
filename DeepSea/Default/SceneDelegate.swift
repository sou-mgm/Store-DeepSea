//
//  SceneDelegate.swift
//  DeepSea
//
//  Created by Matheus Matias on 16/02/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        //Desembrulha um objeto de cena
        guard let windowScene = (scene as? UIWindowScene) else { return }
        // Crio um UIwindow raiz
        let rootWindow = UIWindow(windowScene: windowScene)
        //Defino a view como sendo do tamanho da tela
        rootWindow.frame = UIScreen.main.bounds
        //Apresento a viewController
        rootWindow.makeKeyAndVisible()
        //defino como tema padrao o modo claro
        rootWindow.overrideUserInterfaceStyle = .light
        //Defino a ViewController para apontar
        let controller = MainViewController()
        //Embeda uma navigation controller
        let navController = UINavigationController(rootViewController: controller)
        //Defini qual a view principal
        rootWindow.rootViewController = navController
        // defino a janela raiz
        window = rootWindow
        
        window?.tintColor = UIColor.black
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        
    }

    func sceneWillResignActive(_ scene: UIScene) {
      
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        
    }


}

