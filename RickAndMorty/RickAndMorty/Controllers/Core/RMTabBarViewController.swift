//
//  RMTabBarViewController.swift
//  RickAndMorty
//
//  Created by Paulo Henrique Bendazzoli on 22/08/23.
//

import UIKit

/// Controller to house tabs and root tab controllers
final class RMTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
    }
    
    // MARK: - Private functions
    
    private func setUpTabs() {
        let charactersVC = RMCharacterViewController()
        let locationsVC = RMLocationViewController()
        let episodesVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()
        
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic

        let charactersNav = UINavigationController(rootViewController: charactersVC)
        let locationsNav = UINavigationController(rootViewController: locationsVC)
        let episodesNav = UINavigationController(rootViewController: episodesVC)
        let settingsNav = UINavigationController(rootViewController: settingsVC)
        
        charactersNav.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 1)
        locationsNav.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "house"), tag: 2)
        episodesNav.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "video"), tag: 3)
        settingsNav.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        for nav in [charactersNav, locationsNav, episodesNav, settingsNav] {
            nav.navigationBar.prefersLargeTitles = true
            
        }
        
        let viewControllers = [charactersNav, locationsNav, episodesNav, settingsNav]
        setViewControllers(viewControllers, animated: true)
    }
}
