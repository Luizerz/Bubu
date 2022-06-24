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
//        self.view = homeView
        self.view.addSubview(homeView)
        homeView.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.482, green: 0.094, blue: 0.961, alpha: 1)

        NSLayoutConstraint.activate([
            homeView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            homeView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            homeView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            homeView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationItem()
    }

    // MARK: - Layout
    func setupNavigationItem() {
        navigationItem.title = "Trail"
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .systemTeal
        appearance.titleTextAttributes = [
            .foregroundColor: UIColor.systemPurple,
            .font: UIFont.monospacedSystemFont(ofSize: 20, weight: .bold)
        ]
        navigationItem.scrollEdgeAppearance = appearance
    }

}

extension HomeViewController: HomeViewDelegate {

    func sendImage(isTapped: Bool) {
        if isTapped {
            navigationController?.show(ChallengePageViewController(), sender: self)
        }
    }
}
