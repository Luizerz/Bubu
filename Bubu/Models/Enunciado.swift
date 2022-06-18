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
            return self.operationImage
        }
    }

    var numberRightImage: UIImage {
        get {
            return self.numberRight.image(level: self.level)
        }
    }

    var answers: [Answer] {
        get {
            return self.answers.map({
                Answer(content: $0.content, level: self.level, isTrue: $0.isTrue)
            })
        }

        set {
            answers = newValue
        }
    }

    private var operation: Operation
    private var numberLeft: Number
    private var numberRight: Number
    private var level: Level = .nolevel

    init(numberLeft: Number, operation: Operation, numberRight: Number, answers: [Answer]) {
        self.numberLeft = numberLeft
        self.operation = operation
        self.numberRight = numberLeft
        self.answers = answers
    }

    init(level: Level, enunciado: Enunciado) {
        self = enunciado
        self.level = level
    }

}
