//
//  Answer.swift
//  Bubu
//
//  Created by João Victor Ipirajá de Alencar on 18/06/22.
//

import UIKit

struct Answer {
    var content: Number
    var level: Level?

    var contentImage: UIImage {
        get {
            return content.image(level: self.level ?? .estrela)
        }
    }
    var isTrue: Bool = false
}
