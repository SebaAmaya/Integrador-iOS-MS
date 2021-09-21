//
//  TabBarController.swift
//  Integrador-iOS
//
//  Created by Sebastian Andres Amaya Grez on 21-09-21.
//

import Foundation
import UIKit

class TabBarController: UITabBarController{
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setupViewControllers()
        
      }
    
    func setupViewControllers() {
        let firstTabTitle = "Activities"
        let firstTabImage = UIImage(systemName: "list.dash")
        let firstTab = CategoriesViewController(nibName: "CategoriesViewController", bundle: nil)
        firstTab.title = firstTabTitle
        let firstNavigationController = UINavigationController(rootViewController: firstTab)
        firstNavigationController.tabBarItem = UITabBarItem(title: firstTabTitle, image: firstTabImage, selectedImage: firstTabImage)
        
        
        let secondTabTitle = "Random"
        let secondTabImage = UIImage(systemName: "shuffle")
        let secondTab = SuggestionViewController(nibName: "SuggestionViewController", bundle: nil)
        secondTab.title = secondTabTitle
        let secondNavigationController = UINavigationController(rootViewController: secondTab)
        secondNavigationController.tabBarItem = UITabBarItem(title: secondTabTitle, image: secondTabImage, selectedImage: secondTabImage)


        viewControllers = [firstNavigationController, secondNavigationController]
    }
    
}
