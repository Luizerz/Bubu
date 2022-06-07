//
//  ViewController.swift
//  Bubu
//
//  Created by Luiz Sena on 06/06/22.
//

import UIKit

class HomeViewController: UIViewController {

    private let labelOne: UILabel = {
        let label = UILabel()
        label.text = "LabelOne"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemBlue
        return label
    }()
    private let labelTwo: UILabel = {
        let label = UILabel()
        label.text = "LabelTwo"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemRed
        return label
    }()
    let scrollView: UIScrollView = {
        let scrollViewVar = UIScrollView()
        scrollViewVar.translatesAutoresizingMaskIntoConstraints = false
        scrollViewVar.backgroundColor = .cyan
        return scrollViewVar
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        let safeG = view.safeAreaLayoutGuide
        let contentG = scrollView.contentLayoutGuide
        view.addSubview(scrollView)
        scrollView.addSubview(labelOne)
        scrollView.addSubview(labelTwo)
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: safeG.topAnchor, constant: 8.0),
            scrollView.leadingAnchor.constraint(equalTo: safeG.leadingAnchor, constant: 8.0),
            scrollView.trailingAnchor.constraint(equalTo: safeG.trailingAnchor, constant: -8.0),
            scrollView.bottomAnchor.constraint(equalTo: safeG.bottomAnchor, constant: -8.0),
            labelOne.topAnchor.constraint(equalTo: contentG.topAnchor, constant: 16.0),
            labelOne.leadingAnchor.constraint(equalTo: contentG.leadingAnchor, constant: 16.0),
            labelTwo.leadingAnchor.constraint(equalTo: labelOne.trailingAnchor, constant: 100.0),
            labelTwo.topAnchor.constraint(equalTo: labelOne.topAnchor, constant: 1000),
            labelTwo.trailingAnchor.constraint(equalTo: contentG.trailingAnchor, constant: -16.0),
            labelTwo.bottomAnchor.constraint(equalTo: contentG.bottomAnchor, constant: -16.0)
        ])
    }
}

/*    override func viewDidLayoutSubviews() {
   super.viewDidLayoutSubviews()
   label.frame =
   CGRect(x: 20, y: view.height - view.safeAreaInsets.bottom - 50, width: view.width-40, height: 50)
}*/
