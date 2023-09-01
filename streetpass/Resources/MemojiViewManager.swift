//
//  MemojiViewManager.swift
//  streetpass
//
//  Created by Frank Dulko on 8/31/23.
//

import Foundation
import MemojiView
import SwiftUI

struct MemojiViewUI : UIViewRepresentable {
    var delegate : MemojiViewDelegate
    
    func makeUIView(context: Context) -> MemojiView {
        var mv = MemojiView(frame: .zero)
        mv.tintColor = .purple
        mv.showEditButton = false
        mv.delegate = delegate
        return mv
    }
    
    func updateUIView(_ uiView: MemojiView, context: Context) {
        
    }
    
    typealias UIViewType = MemojiView
    
    
}

class MemojiViewManager : ObservableObject, MemojiViewDelegate {
    @Published var image : UIImage? = nil
    lazy var mv = MemojiViewUI(delegate: self)
    
    func didUpdateImage(image: UIImage, type: ImageType) {
        self.image = image
    }
}
