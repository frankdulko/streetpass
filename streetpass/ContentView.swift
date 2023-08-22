//
//  ContentView.swift
//  streetpass
//
//  Created by Frank Dulko on 8/18/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var centralManager : CentralManager
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
        }
        
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
