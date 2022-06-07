//
//  ViewController.swift
//  Bubu
//
//  Created by Luiz Sena on 06/06/22.
//

import UIKit

class HomeViewController: UIViewController {

    private let label: UILabel = {
        let label = UILabel()
        label.text = "Teste"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .right
        label.tintColor = .blue
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            label.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
        ])
    }
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
////        label.frame =
////        CGRect(x: 20, y: view.height - view.safeAreaInsets.bottom - 50, width: view.width-40, height: 50)
//    }
}
