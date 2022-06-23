//
//  PunctuationBar.swift
//  Bubu
//
//  Created by João Victor Ipirajá de Alencar on 23/06/22.
//

import UIKit

class PunctuationBar: UIView {

    
    
    convenience init(){
        self.init(frame: .zero)
        let stack = UIStackView(arrangedSubviews: [
                UIImageView(image: Image)
        ])
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
