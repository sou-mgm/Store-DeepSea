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
        
        window?.tintColor = UIColor(named: "deepBlue")
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

