//
//  Font.swift
//  streetpass
//
//  Created by Frank Dulko on 8/22/23.
//

import Foundation
import UIKit
import SwiftUI

extension CGFloat {
    public static var xxsmall: CGFloat {
        return 12
    }
    
    public static var xsmall: CGFloat {
        return 14
    }
    
    public static var small: CGFloat {
        return 16
    }
    
    public static var medium: CGFloat {
        return 18
    }
    
    public static var large: CGFloat {
        return 24
    }
    
    public static var xlarge: CGFloat {
        return 36
    }
    
    public static var xxlarge: CGFloat {
        return 48
    }
    
    public static var SCREEN_WIDTH: CGFloat {
        return UIScreen.main.bounds.width
    }
    
    public static var SCREEN_HEIGHT: CGFloat {
        return UIScreen.main.bounds.height
    }
}

extension Font {
    public static var xxsRegular: Font {
        return Font.custom("Gontserrat-Regular", size: .xxsmall)
    }
    
    public static var xsRegular: Font {
        return Font.custom("Gontserrat-Regular", size: .xsmall)
    }
    
    public static var sRegular: Font {
        return Font.custom("Gontserrat-Regular", size: .small)
    }
    
    public static var mRegular: Font {
        return Font.custom("Gontserrat-Regular", size: .medium)
    }
    
    public static var lRegular: Font {
        return Font.custom("Gontserrat-Regular", size: .large)
    }
    
    public static var xlRegular: Font {
        return Font.custom("Gontserrat-Regular", size: .xlarge)
    }
    
    public static var xxlRegular: Font {
        return Font.custom("Gontserrat-Regular", size: .xxlarge)
    }
    
    public static var sBold: Font {
        return Font.custom("Gontserrat-Bold", size: .small)
    }
    
    public static var mBold: Font {
        return Font.custom("Gontserrat-Bold", size: .medium)
    }
    
    public static var lBold: Font {
        return Font.custom("Gontserrat-Bold", size: .large)
    }
    
    public static var xlBold: Font {
        return Font.custom("Gontserrat-Bold", size: .xlarge)
    }
    
    public static var xlBlack: Font {
        return Font.custom("Gontserrat-Black", size: .xlarge)
    }
    
    public static var xxlBlack: Font {
        return Font.custom("Gontserrat-Black", size: .xxlarge)
    }
}
