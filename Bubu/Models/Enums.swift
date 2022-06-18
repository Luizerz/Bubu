//
//  Enums.swift
//  Bubu
//
//  Created by João Victor Ipirajá de Alencar on 18/06/22.
//
import UIKit

enum Level: String {
    case nave = "nave"
    case planeta = "planeta"
    case asteroide = "asteroide"
    case estrela = "estrela"
    case nolevel = ""
}

enum Operation: String {

    case sum = "sinalSoma"
    case minus = "sinalMenos"
    case divison = "sinalDivisao"
    case multiplication = "sinalMulti"
    var image: UIImage {
        return UIImage(named: self.rawValue) ?? UIImage()
    }
}

enum Number: String {

    case zero = "0"
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    func image(level: Level) -> UIImage {
        return UIImage(named: "\(self.rawValue)Cards\(level.rawValue)" ) ?? UIImage(named: "\(self.rawValue)")!
    }

}
