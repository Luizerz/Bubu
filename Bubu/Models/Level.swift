//
//  Level.swift
//  Bubu
//
//  Created by João Victor Ipirajá de Alencar on 18/06/22.
//

import UIKit

struct LevelModel {
    var content: Level
    var enunciados: [Enunciado]
    init(level: Level, enunciados: [Enunciado]) {
        self.content = level
        self.enunciados = enunciados
        self.enunciados.map({
            Enunciado(level: self.content, enunciado: $0)
        })
    }

    static var EXAMPLE: [LevelModel] = [
        LevelModel(level: .estrela, enunciados: [
            Enunciado(numberLeft: .six, operation: .minus, numberRight: .one, answers: [
                Answer(content: .one),
                Answer(content: .five, isTrue: true),
                Answer(content: .four)
            ]),
            Enunciado(numberLeft: .six, operation: .minus, numberRight: .one, answers: [
                Answer(content: .one),
                Answer(content: .five, isTrue: true),
                Answer(content: .four)
            ]),
            Enunciado(numberLeft: .six, operation: .minus, numberRight: .one, answers: [
                Answer(content: .one),
                Answer(content: .five, isTrue: true),
                Answer(content: .four)
            ])
        ]),
        LevelModel(level: .planeta, enunciados: [
            Enunciado(numberLeft: .three, operation: .multiplication, numberRight: .two, answers: [
                Answer(content: .one),
                Answer(content: .six, isTrue: true),
                Answer(content: .four)
            ]),
            Enunciado(numberLeft: .three, operation: .multiplication, numberRight: .two, answers: [
                Answer(content: .one),
                Answer(content: .six, isTrue: true),
                Answer(content: .four)
            ]),
            Enunciado(numberLeft: .three, operation: .multiplication, numberRight: .two, answers: [
                Answer(content: .one),
                Answer(content: .six, isTrue: true),
                Answer(content: .four)
            ])
        ])
    ]
}
