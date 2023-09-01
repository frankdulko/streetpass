//
//  ContentView.swift
//  streetpass
//
//  Created by Frank Dulko on 8/18/23.
//

import SwiftUI

enum MenuType {
    case new
    case all
}

struct ContentView: View {
    @EnvironmentObject var centralManager : CentralManager
    
    @AppStorage("log_Status") var status = false
        
    var body: some View {
        if (status) {
            HomeView()
        }
        else {
            NavigationView{
                LoginView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
