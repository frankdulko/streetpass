//
//  ActionButton.swift
//  streetpass
//
//  Created by Frank Dulko on 8/22/23.
//

import SwiftUI

enum ButtonSize {
    case small
    case medium
    case large
}

enum ButtonType {
    case plain
    case gray
    case tinted
    case filled
}

struct ActionButton: View {
    
    var label : String = "Button Button"
    var size : ButtonSize
    var type : ButtonType
    var action : () -> Void
    var isDisabed : Bool = false
    
    var body: some View {
        Button(action: action) {
            Text(label)
                .padding(10)
                .font(getFont())
                .foregroundColor(type == .filled ? .white : .blue)
                .background(getBackground()).cornerRadius(5)
                .opacity(isDisabed ? 0.5 : 1)
        }
        .disabled(isDisabed)
    }
    
    func getFont() -> Font{
        switch(size){
            case .small: return .sBold
            case .medium: return .mBold
            case .large: return .lBold
        }
    }
    func getBackground() -> Color{
        switch(type){
            case .plain: return .clear
            case .gray: return .gray
            case .tinted: return .blue.opacity(0.5)
            case .filled: return .blue
        }
    }
}



struct ActionButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            Group{
                ActionButton(size: .small, type: .plain, action: {})
                ActionButton(size: .small, type: .gray, action: {})
                ActionButton(size: .small, type: .tinted, action: {})
                ActionButton(size: .small, type: .filled, action: {})
            }
            Group{
                ActionButton(size: .medium, type: .plain, action: {})
                ActionButton(size: .medium, type: .gray, action: {})
                ActionButton(size: .medium, type: .tinted, action: {})
                ActionButton(size: .medium, type: .filled, action: {})
            }
            Group{
                ActionButton(size: .large, type: .plain, action: {})
                ActionButton(size: .large, type: .gray, action: {})
                ActionButton(size: .large, type: .tinted, action: {})
                ActionButton(size: .large, type: .filled, action: {})
            }
        }
    }
}
