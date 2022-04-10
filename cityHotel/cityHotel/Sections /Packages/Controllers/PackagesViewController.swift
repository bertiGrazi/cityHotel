//
//  PackagesViewController.swift
//  cityHotel
//
//  Created by Grazielli Berti on 10/04/22.
//

import UIKit

class PackagesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        title = "Packages"
        
        setupNavigationView()
    }
    
    
    fileprivate func setupNavigationView() {
        let searchPackagesButton = UIButton()
        searchPackagesButton.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        searchPackagesButton.addTarget(self, action: #selector(goToSearchPackages), for: .touchUpInside)
        
        let searchPackagesBarButton = UIBarButtonItem(customView: searchPackagesButton)
        navigationItem.rightBarButtonItem = searchPackagesBarButton
    }
    
    
    @objc func goToSearchPackages() {
        let searchPackagesViewController = SearchPackagesViewController()
        self.present(searchPackagesViewController, animated: true, completion: nil)
    }
}
