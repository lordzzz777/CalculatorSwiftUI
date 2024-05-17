//
//  ViewModel.swift
//  CalculatorSwiftUI
//
//  Created by Lordzzz on 17/5/24.
//

import Foundation
import Observation

// Marca la clase como Observable, aunque esto depende de tu implementación de Observables
@Observable
final class ViewModel {
    
    var textFiledValue: String = "0"
    var textFiledSaveValue: String = "0"
    var currentoerationToExecute: OperationType?
    var shouldRunOperation: Bool = false
    
    // Método para manejar la lógica de la calculadora
    func logic(key: KeyboardButton){
        switch key.type {
        case .number(let value):
            
            // Si se debe ejecutar una operación, reinicia el campo de texto
            if shouldRunOperation{
                textFiledValue = "0"
                shouldRunOperation = false
            }
            // Concatena el valor presionado al campo de texto actual
            if !textFiledValue.contains(".") || "\(value)" != "."{
                textFiledValue = textFiledValue == "0" ? "\(value)" : textFiledValue + "\(value)"
            }
            
        case .decimal:
            // Agrega el punto decimal si no está presente en el número actual
            if !textFiledValue.contains("."){
                textFiledValue += "."
            }
            
        case .reset:
            // Reinicia todos los valores
            textFiledValue = "0"
            textFiledSaveValue = "0"
            currentoerationToExecute = nil
            shouldRunOperation = false
            
        case .resultado:
            
            // Realiza la operación guardada si existe
            guard let operation = currentoerationToExecute,
                  let currentValue = Double(textFiledValue),
                  let savedValue = Double(textFiledSaveValue) else {
                return
            }
            
            // Realiza la operación correspondiente y actualiza el campo de texto
            switch operation {
            case .multiplication:
                // Multiplicación
                textFiledValue = "\(currentValue * savedValue)"
                
            case .sum:
                // Suma
                textFiledValue = "\(currentValue + savedValue)"
                
            case .subtraction:
                // Resta
                textFiledValue = "\(savedValue - currentValue)"
                
            case .division:
                // Maneja la división por cero
                if currentValue != 0{
                    textFiledValue = "\(savedValue / currentValue)"
                }else{
                    textFiledValue = "Error"
                }
                
                // Reinicia el estado de la operación
                currentoerationToExecute = nil
                shouldRunOperation = true
                
            case .percent:
                // Calcula el porcentaje del valor actual
                if let currentValue = Double(textFiledValue){
                    textFiledValue = "\(currentValue / 100)"
                }
                
            case .changeSign:
                // Cambia el signo del valor actual
                if let currentValue = Double(textFiledValue){
                    textFiledValue = "\(currentValue * -1)"
                }
                
            }
            
        case .operation(let type):
            // Guarda el valor actual y la operación seleccionada
            textFiledSaveValue = textFiledValue
            currentoerationToExecute = type
            shouldRunOperation = true
        }
    }
}
