//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Nikolay Zhukov on 08.08.2023.
//

import UIKit

final class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setUpTabs()
    }

    private func setUpTabs() {
        let charactersVC = RMCharacterViewController()
        let locationsVC = RMLocationsViewController()
        let episodesVC = RMEpisodesViewController()
        let settingsVC = RMSettingsViewController()
        
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let navOne = UINavigationController(rootViewController: charactersVC)
        let navTwo = UINavigationController(rootViewController: locationsVC)
        let navThree = UINavigationController(rootViewController: episodesVC)
        let navFour = UINavigationController(rootViewController: settingsVC)
        
        navOne.tabBarItem = UITabBarItem(title: "Characters", image: nil, tag: 1)
        navTwo.tabBarItem = UITabBarItem(title: "Locations", image: nil, tag: 2)
        navThree.tabBarItem = UITabBarItem(title: "Episodes", image: nil, tag: 3)
        navFour.tabBarItem = UITabBarItem(title: "Settings", image: nil, tag: 4)
        
        for nav in [navOne, navTwo, navThree, navFour] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([navOne, navTwo, navThree, navFour], animated: true)
    }
}

