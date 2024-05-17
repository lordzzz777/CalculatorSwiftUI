//
//  StyleButtomView.swift
//  CalculatorSwiftUI
//
//  Created by Esteban Perez Castillejo on 15/3/24.
//

import SwiftUI
 enum Colores {
    case colorOperataror, colorOperator2,  colorNumber
}
struct StyleButtomView: ViewModifier {
    var colorButto: Color
    var rodent: CGFloat    
    func body(content: Content) -> some View {
       // content
        Button(action: {
            
         }, label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
        })
    }
    
 
}

