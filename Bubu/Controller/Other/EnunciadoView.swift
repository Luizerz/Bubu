//
//  EnunciadoView.swift
//  Bubu
//
//  Created by João Victor Ipirajá de Alencar on 13/06/22.
//

import UIKit

class EnunciadoView: UIView {
    
    
    
    let numberViewLeft: UIImageView = UIImageView()
    let numberViewRight: UIImageView = UIImageView()
    let operationLabel = UILabel()
    
    lazy var stackView = UIStackView(frame: .zero)
    
    convenience init() {
        self.init(frame: .zero)
        
        backgroundColor = .systemGreen
        
        self.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
        
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = UIStackView.spacingUseSystem
        
        self.numberViewLeft.image = UIImage(named: "Mapa")
        self.numberViewLeft.contentMode = .scaleAspectFit
        
        self.stackView.addArrangedSubview(numberViewLeft)
        
        self.operationLabel.text = "+"
        self.operationLabel.font = .systemFont(ofSize: 50)

            
        self.operationLabel.textAlignment = .center
        
        self.stackView.addArrangedSubview(operationLabel)
        self.numberViewRight.image = UIImage(named: "Mapa")
        self.numberViewRight.contentMode = .scaleAspectFit
        
        self.stackView.addArrangedSubview(numberViewRight)
        self.stackView.isLayoutMarginsRelativeArrangement = true
    

        self.stackView.layoutMargins = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.cornerRadius = 8

        
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
