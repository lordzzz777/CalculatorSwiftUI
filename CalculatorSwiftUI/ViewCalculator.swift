//
//  ViewCalculator.swift
//  CalculatorSwiftUI
//
//  Created by Esteban Perez Castillejo on 15/3/24.
//

import SwiftUI

struct ViewCalculator: View {
    let botones1 = [
        ("AC", { print("Acción 1") }),
        ("+/-", { print("Acción 2") }),
        ("%", { print("Acción 3") }),
        ("÷", { print("Acción 4") })
    ]
    let botones2 = [
        ("7", { print("Acción 1") }),
        ("8", { print("Acción 2") }),
        ("9", { print("Acción 3") }),
        ("X", { print("Acción 4") })
    ]
    let botones3 = [
        ("4", { print("Acción 1") }),
        ("5", { print("Acción 2") }),
        ("6", { print("Acción 3") }),
        ("-", { print("Acción 4") })
    ]
    let botones4 = [
        ("1", { print("Acción 1") }),
        ("2", { print("Acción 2") }),
        ("3", { print("Acción 3") }),
        ("+", { print("Acción 4") })
    ]
    let botones5 = [
        ("0", { print("Acción 1") }),
        (".", { print("Acción 2") }),
        ("=", { print("Acción 3") })
    ]
    
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                ForEach(botones1, id: \.0) { label, actions in
                    CalculatorButton(label: label, action: actions)
                }
            }
            HStack {
                ForEach(botones2, id: \.0) { label, actions in
                    CalculatorButton(label: label, action: actions)
                }
            }
            HStack {
                ForEach(botones3, id: \.0) { label, actions in
                    CalculatorButton(label: label, action: actions)
                }
            }
            HStack {
                ForEach(botones4, id: \.0) { label, actions in
                    CalculatorButton(label: label, action: actions)
                }
            }
            HStack {
                ForEach(botones5, id: \.0) { label, actions in
                    CalculatorButton(label: label, action: actions)
                        .frame(width: label == "0" ? 140 : 70) // Adjust width for "0" button
                    
                }
            }
        }
        .padding()
    }
}

struct CalculatorButton: View {
    let label: String
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            self.action()
        }, label: {
            Text(label)
                .font(.title)
                .frame(width: 70, height: 70)
                .background(Color.gray)
                .cornerRadius(35)
                .foregroundColor(.white)
        })
    }
}

#Preview {
    ViewCalculator()
}
