//
//  BubuTests.swift
//  BubuTests
//
//  Created by Luiz Sena on 06/06/22.
//

import XCTest
@testable import Bubu

class BubuTests: XCTestCase {

    class HomeViewDelegateMock: HomeViewDelegate {
        var sendImageWasCalled: Bool = false

        func sendImage(_ image: UIImage) {
            sendImageWasCalled = true
        }
    }

    func testHomeViewButtonAction() {
        // given
        let mock = HomeViewDelegateMock()
        let view = HomeView()
        view.delegate = mock

        // when
        view.buttonAction(view.button1)

        // then
        XCTAssertFalse(mock.sendImageWasCalled)
    }

}
