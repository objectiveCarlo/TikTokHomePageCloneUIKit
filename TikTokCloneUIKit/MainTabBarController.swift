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
        view.backgroundColor = UIColor.red
        self.viewControllers = [homeViewTab, searchTab, uploadTab, messageTab, profileTab]
    }
    
    lazy public var homeViewTab: HomeViewController = {
        
        let initialTabBar = HomeViewController()
        
        let title = "Home"
        
        let defaultImage  = UIImage(systemName: "house")!.withTintColor(UIColor.white, renderingMode: .alwaysOriginal)
        
        let selectedImage = UIImage(systemName: "house.fill")!.withTintColor(UIColor.white, renderingMode: .alwaysOriginal)
        
        let tabBarItems = (title: title, image: defaultImage, selectedImage: selectedImage)
        
        let tabBarItem = UITabBarItem(title: tabBarItems.title, image: tabBarItems.image, selectedImage: tabBarItems.selectedImage)
        
        initialTabBar.tabBarItem = tabBarItem
        
        return initialTabBar
    }()
    
    lazy public var searchTab: UIViewController = {
        
        let finalTabBar = UIViewController()
        
        let defaultImage = UIImage(systemName: "magnifyingglass.circle")!.withTintColor(UIColor.white, renderingMode: .alwaysOriginal)
        
        let selectedImage = UIImage(systemName: "magnifyingglass.circle.fill")!.withTintColor(UIColor.black, renderingMode: .alwaysOriginal)
        
        let tabBarItem = UITabBarItem(title: "Search", image: defaultImage, selectedImage: selectedImage)
        
        finalTabBar.tabBarItem = tabBarItem
        
        return finalTabBar
    }()
    
    lazy public var uploadTab: UIViewController = {
        
        let finalTabBar = UIViewController()
        
        let defaultImage = UIImage(systemName: "icloud.and.arrow.up")!.withTintColor(UIColor.white, renderingMode: .alwaysOriginal)
        
        let selectedImage = UIImage(systemName: "icloud.and.arrow.up.fill")!.withTintColor(UIColor.black, renderingMode: .alwaysOriginal)
        
        let tabBarItem = UITabBarItem(title: "", image: defaultImage, selectedImage: selectedImage)
        
        finalTabBar.tabBarItem = tabBarItem
        
        return finalTabBar
    }()
    
    lazy public var messageTab: UIViewController = {
        
        let finalTabBar = UIViewController()
        
        let defaultImage = UIImage(systemName: "message")!.withTintColor(UIColor.white, renderingMode: .alwaysOriginal)
        
        let selectedImage = UIImage(systemName: "message.fill")!.withTintColor(UIColor.black, renderingMode: .alwaysOriginal)
        
        let tabBarItem = UITabBarItem(title: "Inbox", image: defaultImage, selectedImage: selectedImage)
        
        finalTabBar.tabBarItem = tabBarItem
        
        return finalTabBar
    }()
    
    lazy public var profileTab: UIViewController = {
        
        let finalTabBar = UIViewController()
        
        let defaultImage = UIImage(systemName: "person.crop.circle")!.withTintColor(UIColor.white, renderingMode: .alwaysOriginal)
        
        let selectedImage = UIImage(systemName: "person.crop.circle.fill")!.withTintColor(UIColor.black, renderingMode: .alwaysOriginal)
        
        let tabBarItem = UITabBarItem(title: "Me", image: defaultImage, selectedImage: selectedImage)
        
        finalTabBar.tabBarItem = tabBarItem
        
        return finalTabBar
    }()
    
    
    
}
