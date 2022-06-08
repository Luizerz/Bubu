//
//  LevelButton.swift
//  Bubu
//
//  Created by Luiz Sena on 08/06/22.
//

import UIKit

class LevelButton: UIButton {
    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: 120, height: 120))
        backgroundColor = .systemRed
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
