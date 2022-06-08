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
    private let button1: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
//        button.backgroundColor = .red
        button.setImage(UIImage(named: "Mapa"), for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return button
    }()
    @objc func buttonAction() {
        print("MAPA")
    }
    override func viewDidLoad() {
        let screenSize = UIScreen.main.bounds
        super.viewDidLoad()
        let safeG = view.safeAreaLayoutGuide
        let contentG = scrollView.contentLayoutGuide
        view.addSubview(scrollView)
        scrollView.addSubview(labelOne)
//        scrollView.addSubview(labelTwo)
        scrollView.addSubview(button1)
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: safeG.topAnchor, constant: 8.0),
            scrollView.leadingAnchor.constraint(equalTo: safeG.leadingAnchor, constant: 8.0),
            scrollView.trailingAnchor.constraint(equalTo: safeG.trailingAnchor, constant: -8.0),
            scrollView.bottomAnchor.constraint(equalTo: safeG.bottomAnchor, constant: -8.0),
            labelOne.topAnchor.constraint(equalTo: contentG.topAnchor, constant: 16.0),
            labelOne.leadingAnchor.constraint(equalTo: contentG.leadingAnchor, constant: 16.0),
            button1.leadingAnchor.constraint(equalTo: labelOne.trailingAnchor, constant: screenSize.width),
            button1.topAnchor.constraint(equalTo: labelOne.topAnchor, constant: screenSize.height),
            button1.trailingAnchor.constraint(equalTo: contentG.trailingAnchor, constant: -16.0),
            button1.bottomAnchor.constraint(equalTo: contentG.bottomAnchor, constant: -16.0),
            button1.heightAnchor.constraint(equalToConstant: CGFloat(55)),
            button1.widthAnchor.constraint(equalToConstant: CGFloat(55))
        ])
    }
}
/*    override func viewDidLayoutSubviews() {
 super.viewDidLayoutSubviews()
 label.frame =
 CGRect(x: 20, y: view.height - view.safeAreaInsets.bottom - 50, width: view.width-40, height: 50)
 }*/
