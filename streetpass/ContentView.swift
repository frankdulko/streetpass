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
    
    @State private var menu : MenuType = .new
    
    var body: some View {
        VStack {
            HStack{
                Image("placeholder")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .background(Color.orange)
                    .clipShape(Circle())
                Text("Jenna")
                    .font(.xlBold)
                Spacer()
            }
            HStack{
                Button(action: onNewTap) {
                    VStack{
                        Text("NEW")
                            .foregroundColor(.black)
                            .font(menu == .new ? .mBold : .mRegular)
                            .frame(maxWidth: .infinity)
                        Divider()
                            .frame(height: menu == .new ? 3 : 1)
                            .overlay(.black)
                            .padding([.horizontal], 20)
                    }
                    
                }
                Button(action: onAllTap) {
                    VStack{
                        Text("ALL")
                            .foregroundColor(.black)
                            .font(menu == .all ? .mBold : .mRegular)
                            .frame(maxWidth: .infinity)
                        Divider()
                            .frame(height: menu == .all ? 3 : 1)
                            .overlay(.black)
                            .padding([.horizontal], 20)
                    }
                }
            }
            ScrollView{
                ForEach(menu == .new ? sampleNew : sampleAll, id: \.id) { person in
                    HStack{
                        Image(person.picture)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 75, height: 75)
                            .background(person.color)
                            .clipShape(Circle())
                        VStack(alignment: .leading){
                            Text(person.name)
                                .font(.lBold)
                            Text(person.date)
                                .font(.sRegular)
                            Text(person.time)
                                .font(.sRegular)
                        }
                        Spacer()
                        Text(person.encounters)
                            .font(.lBold)
                    }
                    .padding()
                    .background(Color(UIColor.systemGray6)).cornerRadius(10)
                }
            }
            Spacer()
        }
        .padding()
    }
    
    func onNewTap() {
        if (menu == .all){
            menu = .new
        }
    }
    
    func onAllTap() {
        if (menu == .new){
            menu = .all
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
