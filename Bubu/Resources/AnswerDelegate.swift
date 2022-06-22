//
//  AnswerDelegate.swift
//  Bubu
//
//  Created by João Victor Ipirajá de Alencar on 22/06/22.
//

import Foundation
import UIKit


protocol AnswerDelegate: AnyObject {
//    var isAnsweredCorrectly:UIAction
    func buttonWasTapped(correctAnswer: Bool)
}
