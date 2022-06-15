//
//  ViewController.swift
//  Bubu
//
//  Created by Luiz Sena on 06/06/22.
//

import UIKit

class HomeViewController: UIViewController {

    let homeView: HomeView = HomeView(frame: UIScreen.main.bounds)

    var imagesThatWereTapped: [UIImage] = []

    // MARK: - Life Cycle
    override func loadView() {
        super.loadView()
        homeView.delegate = self
        self.view = homeView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationItem()
    }

    // MARK: - Layout
    func setupNavigationItem() {
        navigationItem.title = "BUBU"
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .systemTeal
        appearance.titleTextAttributes = [
            .foregroundColor: UIColor.systemPurple,
            .font: UIFont.monospacedSystemFont(ofSize: 30, weight: .bold)
        ]
        navigationItem.scrollEdgeAppearance = appearance
    }

}

extension HomeViewController: HomeViewDelegate {

    func sendImage(_ image: UIImage) {
        imagesThatWereTapped.append(image)
    }

}
