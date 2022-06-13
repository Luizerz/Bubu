//
//  ChallengeViewController.swift
//  Bubu
//
//  Created by João Victor Ipirajá de Alencar on 13/06/22.
//

import UIKit

class ChallengeViewController: UIViewController {
    
    let enunciado = EnunciadoView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(enunciado)
        NSLayoutConstraint.activate([
            enunciado.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            enunciado.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            enunciado.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
//            enunciado.widthAnchor.constraint(equalToConstant: 200),
//            enunciado.heightAnchor.constraint(equalToConstant: 100)
        ])
        
    }
    



}
