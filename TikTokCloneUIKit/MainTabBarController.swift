//
//  MainTabBarController.swift
//  TikTokCloneUIKit
//
//  Created by Carlo Luis Martinez Bation on 16/4/21.
//

import UIKit

class MainTabBarController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewControllers = [homeViewTab, searchTab, uploadTab, messageTab, profileTab]
    }
    
    lazy public var homeViewTab: HomeViewController = {
        
        let initialTabBar = HomeViewController()
        
        let title = "Home"
        
        let defaultImage  = UIImage(systemName: "house")!
        
        let selectedImage = UIImage(systemName: "house.fill")!
        
        let tabBarItems = (title: title, image: defaultImage, selectedImage: selectedImage)
        
        let tabBarItem = UITabBarItem(title: tabBarItems.title, image: tabBarItems.image, selectedImage: tabBarItems.selectedImage)
        
        initialTabBar.tabBarItem = tabBarItem
        
        return initialTabBar
    }()
    
    lazy public var searchTab: UIViewController = {
        
        let finalTabBar = UIViewController()
        
        let defaultImage = UIImage(systemName: "magnifyingglass.circle")!
        
        let selectedImage = UIImage(systemName: "magnifyingglass.circle.fill")!
        
        let tabBarItem = UITabBarItem(title: "Search", image: defaultImage, selectedImage: selectedImage)
        
        finalTabBar.tabBarItem = tabBarItem
        
        return finalTabBar
    }()
    
    lazy public var uploadTab: UIViewController = {
        
        let finalTabBar = UIViewController()
        
        let defaultImage = UIImage(systemName: "icloud.and.arrow.up")!
        
        let selectedImage = UIImage(systemName: "icloud.and.arrow.up.fill")!
        
        let tabBarItem = UITabBarItem(title: "Upload", image: defaultImage, selectedImage: selectedImage)
        
        finalTabBar.tabBarItem = tabBarItem
        
        return finalTabBar
    }()
    
    lazy public var messageTab: UIViewController = {
        
        let finalTabBar = UIViewController()
        
        let defaultImage = UIImage(systemName: "message")!
        
        let selectedImage = UIImage(systemName: "message.fill")!
        
        let tabBarItem = UITabBarItem(title: "Message", image: defaultImage, selectedImage: selectedImage)
        
        finalTabBar.tabBarItem = tabBarItem
        
        return finalTabBar
    }()
    
    lazy public var profileTab: UIViewController = {
        
        let finalTabBar = UIViewController()
        
        let defaultImage = UIImage(systemName: "person.crop.circle")!
        
        let selectedImage = UIImage(systemName: "person.crop.circle.fill")!
        
        let tabBarItem = UITabBarItem(title: "Search", image: defaultImage, selectedImage: selectedImage)
        
        finalTabBar.tabBarItem = tabBarItem
        
        return finalTabBar
    }()
    
    
    
}
