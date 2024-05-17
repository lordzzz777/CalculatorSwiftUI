//
//  Matrix.swift
//  CalculatorSwiftUI
//
//  Created by Lordzzz on 12/5/24.
//

import Foundation
import SwiftUI

/// en el tutorial import UIKit, pero no es necesario

// MARK: Matriz que representa todas las teclas de la calculadora
struct Matrix {
    
    // Sección uno de teclas
    static let firstSectionData: [KeyboardButton] = [
        .init(title: "AC", textColor: .black, backgroundColor: customLightGray, isDoubleWidth: false, type: .reset),
        .init(title: "+/-", textColor: .black, backgroundColor: customLightGray, isDoubleWidth: false, type: .operation(.changeSign)),
        .init(title: "%", textColor: .black, backgroundColor: customLightGray, isDoubleWidth: false, type: .operation(.percent)),
        .init(title: "/", textColor: .white, backgroundColor: customOrange, isDoubleWidth: false, type: .operation(.division)),
        .init(title: "7", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .number(7)),
        .init(title: "8", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .number(8)),
        .init(title: "9", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .number(9)),
        .init(title: "X", textColor: .white, backgroundColor: customOrange, isDoubleWidth: false, type: .operation(.multiplication)),
        .init(title: "4", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .number(4)),
        .init(title: "5", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .number(5)),
        .init(title: "6", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .number(6)),
        .init(title: "-", textColor: .white, backgroundColor: customOrange, isDoubleWidth: false, type: .operation(.subtraction)),
        .init(title: "1", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .number(1)),
        .init(title: "2", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .number(2)),
        .init(title: "3", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .number(3)),
        .init(title: "+", textColor: .white, backgroundColor: customOrange, isDoubleWidth: false, type: .operation(.sum)),
    ]
    
    // Sección dos de teclas
    static let secondSectionData: [KeyboardButton] = [
        .init(title: "0", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: true, type: .number(0)),
        .init(title: ",", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .decimal),
        .init(title: "=", textColor: .white, backgroundColor: customOrange, isDoubleWidth: false, type: .resultado)
    ]
    
    // Este primer cierre representa un tamañao de las teclas, de la primera sección
    static let firstSectionGrid: (CGFloat) -> [GridItem] = { width in
        return  Array(repeating: GridItem(.flexible (minimum: width), spacing: 0), count: 4)
    }
    
    // Este primer cierre representa un tamañao de las teclas, de la segunda sección
    static let secondSectionGrid: (CGFloat) -> [GridItem] = { width in
        return [
            GridItem(.flexible(minimum: width * 2), spacing: 0),
            GridItem(.flexible(minimum: width), spacing: 0),
            GridItem(.flexible(minimum: width), spacing: 0),
        ]
    }

}
