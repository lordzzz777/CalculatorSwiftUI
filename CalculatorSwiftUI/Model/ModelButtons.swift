//
//  ModelButtons.swift
//  CalculatorSwiftUI
//
//  Created by Lordzzz on 12/5/24.
//

import Foundation
import SwiftUI

// MARK: Modelo que representa las teclas
struct  KeyboardButton: Hashable {
    let title: String
    let textColor: Color
    let backgroundColor: Color
    let isDoubleWidth: Bool
    let type: ButtonType
}

// MARK: Este enum, va asignar que acción realiza cada tecla
enum ButtonType: Hashable {
    case number(Int)
    case operation(OperationType)
    case resultado
    case reset
    case decimal
}

// MARK: Enumera los tipos de operaciones
enum OperationType: Hashable {
    case sum // Suma
    case subtraction // resta
    case multiplication // Multiplicación
    case division // division
    case percent // Porcentage
    case changeSign // Operación de +/-
}
