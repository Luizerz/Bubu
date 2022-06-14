//
//  ViewController.swift
//  Bubu
//
//  Created by Luiz Sena on 06/06/22.
//

import UIKit

class HomeViewController: UIViewController {
    let scrollView: UIScrollView = {
        let scrollViewVar = UIScrollView()
        scrollViewVar.translatesAutoresizingMaskIntoConstraints = false
        return scrollViewVar
    }()
    lazy var contentView: UIView = {
        let view = UIView()
//        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    lazy var button1: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "starFace"), for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return button
    }()
    @objc func buttonAction() {
        print("Star1")
    }
    lazy var button2: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "starFace"), for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return button
    }()
    lazy var button3: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "starFace"), for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return button
    }()
    lazy var button4: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "starFace"), for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return button
    }()
    var stackView = UIStackView()
    var images = [UIImageView]()
    override func viewDidLoad() {
        super.viewDidLoad()
        images.append(UIImageView(image: UIImage(named: "stars")))
        images[0].frame = CGRect(x: 0,
                                 y: UIScreen.main.bounds.height*CGFloat(0),
                                 width: view.frame.width,
                                 height: view.frame.height)
        images[0].contentMode = .scaleAspectFit
        view.addSubview(images[0])
        view.backgroundColor = UIColor(red: 0.482, green: 0.094, blue: 0.961, alpha: 1)
        view.addSubview(scrollView)
//        scrollView.addSubview(contentView)
        scrollView.addSubview(stackView)
        stackView.addArrangedSubview(button1)
        stackView.addArrangedSubview(button2)
        stackView.addArrangedSubview(button3)
        stackView.addArrangedSubview(button4)
        stackView.axis = .vertical
        stackView.alignment = .center

        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
//            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
            button1.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.50),
            button1.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.50),
            
            button2.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.50),
            button2.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.50),

            button3.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.50),
            button3.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.50),

            button4.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.50),
            button4.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.50)
        ])
    }
}
