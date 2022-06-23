//
//  Answer.swift
//  Bubu
//
//  Created by João Victor Ipirajá de Alencar on 18/06/22.
//

import UIKit






struct Answer: Equatable {
   
    
    var id: String = UUID().uuidString
    
    var content: Number

    var contentImage: UIImage {
        get {
            return content.image(level: .nolevel)
        }
    }
    var isTrue: Bool = false
    
    static func == (lhs: Answer, rhs: Answer) -> Bool {
        return lhs.id == rhs.id
    }

    
}
