//
//  ChallengeViewController.swift
//  Bubu
//
//  Created by João Victor Ipirajá de Alencar on 13/06/22.
//

import UIKit

class ChallengeViewController: UIViewController {
    
    lazy var enunciado = EnunciadoView()
    lazy var answer = AnswerView(answerModel: [
        Answer(content: "1"),
        Answer(content: "2"),
        Answer(content: "3", isTrue: true),
    ])

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(enunciado)
        view.addSubview(answer)
        NSLayoutConstraint.activate([
            
            answer.topAnchor.constraint(equalTo: enunciado.bottomAnchor),
            answer.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            answer.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 5),
            answer.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -5),
            enunciado.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            enunciado.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            enunciado.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            answer.heightAnchor.constraint(equalTo: enunciado.heightAnchor, multiplier: 0.9),
            enunciado.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5)

            
//            enunciado.widthAnchor.constraint(equalToConstant: 200),
//            enunciado.heightAnchor.constraint(equalToConstant: 100)
        ])
        
    }
    



}
