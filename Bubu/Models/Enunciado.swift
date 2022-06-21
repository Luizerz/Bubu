//
//  Enunciado.swift
//  Bubu
//
//  Created by João Victor Ipirajá de Alencar on 18/06/22.
//

import UIKit

struct Enunciado {
    
    var numberLeftImage: UIImage {
        get {
            return self.numberLeft.image(level: self.level)
        }
    }

    var operationImage: UIImage {
        get {
            return self.operation.image
        }
    }

    var numberRightImage: UIImage {
        get {
            return self.numberRight.image(level: self.level)
        }
    }
    
    var answers:[Answer]

    
  
    private var operation: Operation
    private var numberLeft: Number
    private var numberRight: Number
    private var level: Level
    

    init(numberLeft: Number, operation: Operation, numberRight: Number, answers: [Answer]) {
        self.numberLeft = numberLeft
        self.operation = operation
        self.numberRight = numberLeft
        self.answers = answers
        self.level = .nolevel
    }

    init(level: Level, enunciado: Enunciado) {
        self = enunciado
        print(self.numberLeft.rawValue)
        self.level = level
    }

}
