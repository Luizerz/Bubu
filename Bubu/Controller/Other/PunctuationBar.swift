//
//  PunctuationBar.swift
//  Bubu
//
//  Created by João Victor Ipirajá de Alencar on 23/06/22.
//

import UIKit

class PunctuationBar: UIView {

    
    
    convenience init(text: String ){
        self.init(frame: .zero)
        
        let label = UILabel(frame: .zero)
        label.text = text
        label.translatesAutoresizingMaskIntoConstraints = true
        
        
        
        let stackPonto = UIStackView(arrangedSubviews: [
                UIImageView(image: UIImage(systemName: "heart.fill") ),
                label
        ])
        stackPonto.translatesAutoresizingMaskIntoConstraints = true
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
