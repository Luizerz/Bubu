//
//  HomeView.swift
//  Bubu
//
//  Created by Luiz Sena on 14/06/22.
//

import UIKit

protocol HomeViewDelegate: AnyObject {
    func sendImage(isTapped: Bool)
}

class HomeView: UIView {

    // MARK: - Binding
    weak var delegate: HomeViewDelegate!

    // MARK: - View
    let scrollView: UIScrollView = {
        let scrollViewVar = UIScrollView()
        scrollViewVar.translatesAutoresizingMaskIntoConstraints = false
        return scrollViewVar
    }()

    lazy var button1: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "botaoMais"), for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return button
    }()

    lazy var button2: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "botaoMenos"), for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return button
    }()

    lazy var button3: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "botaoMulti"), for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return button
    }()

    lazy var button4: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "botaoDivid"), for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return button
    }()

    lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.addArrangedSubview(button1)
        stackView.addArrangedSubview(button2)
        stackView.addArrangedSubview(button3)
        stackView.addArrangedSubview(button4)
        stackView.axis = .vertical
        stackView.alignment = .center
        return stackView
    }()
// tirar essa images da HomeView, pois não é recomendado fazer isso diretamente.
//    lazy var images: [UIImageView] = {
//        var images = [UIImageView]()
//        images.append(UIImageView(image: UIImage(named: "stars")))
//        images[0].frame = CGRect(
//            x: 0,
//            y: UIScreen.main.bounds.height*CGFloat(0),
//            width: self.frame.width,
//            height: self.frame.height
//        )
//        images[0].contentMode = .scaleAspectFit
//        return images
//    }()

    // MARK: - Action
    @objc func buttonAction(_ sender: UIButton) {
        guard let image = sender.image(for: .normal) else { return }
        print(image)
        delegate.sendImage(isTapped: true)
    }

    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        backgroundColor = UIColor(red: 0.33, green: 0.93, blue: 0.61, alpha: 1.00)
        setupLayout()
    }

    func setupLayout() {

//        self.addSubview(images[0])
        self.addSubview(scrollView)
        scrollView.addSubview(stackView)

        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 35
        stackView.distribution = .fillEqually
        NSLayoutConstraint.activate([

            scrollView.topAnchor.constraint(equalTo: self.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.trailingAnchor),

            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),

            button1.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.35),
            button1.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.35),

            button2.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.35),
            button2.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.35),

            button3.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.35),
            button3.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.35),

            button4.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.35),
            button4.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.35)
        ])
    }

}
