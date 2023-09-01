//
//  TextView.swift
//  streetpass
//
//  Created by Frank Dulko on 8/31/23.
//

import SwiftUI

enum TextType {
    case headline
    case title
    case subtitle
    case header
    case paragraph
}

struct TextView: View {
    
    var text : String = "Some text"
    var type : TextType
    
    var body: some View {
        Text(text)
            .font(getFont())
            .padding(3)
            .multilineTextAlignment(.center)
    }
    
    func getFont() -> Font {
        switch(type){
            
        case .headline:
            return .xxlBlack
        case .title:
            return .xlBold
        case .subtitle:
            return .lRegular
        case .header:
            return .mBold
        case .paragraph:
            return .sRegular
        }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(alignment: .leading){
            Group{
                TextView(text: "Headline", type: .headline)
                TextView(text: "Title", type: .title)
                TextView(text: "Subtitle", type: .subtitle)
                TextView(text: "Header", type: .header)
                TextView(text: "Paragraph", type: .paragraph)
            }
        }
    }
}
