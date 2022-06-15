//
//  EnunciadoView.swift
//  Bubu
//
//  Created by João Victor Ipirajá de Alencar on 13/06/22.
//

import UIKit

class EnunciadoView: UIView {
    
    private var model:Enunciado?
    
    let numberViewLeft = UIImageView()
    let numberViewRight = UIImageView()
    let operationLabel = UIImageView()
    
    lazy var stackView = UIStackView(frame: .zero)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    convenience init(model: Enunciado? = nil) {
        
        self.init(frame: .zero)
        self.model = model
        backgroundColor = .systemGreen
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
        
        if let model = self.model{
            self.numberViewLeft.image = model.numberLeft.image
            self.numberViewLeft.contentMode = .scaleAspectFit
            
            self.stackView.addArrangedSubview(numberViewLeft)
            
            self.operationLabel.image =  model.operation.image
            self.operationLabel.contentMode = .scaleAspectFit
            
            self.stackView.addArrangedSubview(operationLabel)
            
            self.numberViewRight.image = model.numberRight.image
            self.numberViewRight.contentMode = .scaleAspectFit
            
            self.stackView.addArrangedSubview(numberViewRight)
            self.stackView.isLayoutMarginsRelativeArrangement = true
        }
        
       
    

        self.stackView.layoutMargins = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.cornerRadius = 8

        
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
