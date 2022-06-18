//
//  AnswerView.swift
//  Bubu
//
//  Created by João Victor Ipirajá de Alencar on 14/06/22.
//

import UIKit

class AnswerView: UIView {

    private var model: [Answer] = []
    lazy var listButton: [UIButton] = self.model.map { answer in
        let button = UIButton(frame: .zero)

        button.setImage(answer.contentImage, for: .normal)

        let action = UIAction { _ in
            print(answer.isTrue)
        }

        button.addAction(action, for: .primaryActionTriggered)
        button.layoutIfNeeded()
        button.subviews.first?.contentMode = .scaleAspectFit
        return button
    }

    lazy var stackView = UIStackView(arrangedSubviews: listButton)

    convenience init(answerModel: [Answer]? = nil) {
        self.init(frame: .zero)

        self.model = answerModel ?? []

        // backgroundColor = .systemGreen

        self.addSubview(stackView)

        stackView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])

        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = UIStackView.spacingUseSystem

        self.stackView.isLayoutMarginsRelativeArrangement = true

        self.stackView.layoutMargins = UIEdgeInsets(top: 30, left: 20, bottom: 30, right: 20)
        self.translatesAutoresizingMaskIntoConstraints = false

    }

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

//    init(){
//        super.init(arrangedSubviews: )
//        self.axis = .horizontal
//        self.distribution = .fillProportionally
//        self.spacing = 20
//        self.translatesAutoresizingMaskIntoConstraints = false
//

//    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
