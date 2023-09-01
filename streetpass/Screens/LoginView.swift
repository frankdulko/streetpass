//
//  LoginView.swift
//  streetpass
//
//  Created by Frank Dulko on 8/31/23.
//

import SwiftUI
import FirebaseAuth

struct LoginView: View {
    
    @StateObject var loginData = LoginModel()
    
    var body: some View {
        ZStack{
            ZStack{
                VStack{
                    VStack{
                        NavigationLink(destination: VerifyView(loginData: loginData), isActive: $loginData.goToVerify) {
                            Text("")
                                .hidden()
                        }
                        if loginData.loading {
                            ProgressView()
                                .padding()
                                .scaleEffect(2)
                        }
                        else {
                            TextView(text: PHONE_NUMBER_PROMPT, type: .title)
                            TextView(text: PHONE_NUMBER_DIRECTION, type: .subtitle)
                            TextField("", text: $loginData.phoneNumber.max(10))
                                .multilineTextAlignment(.center)
                                .font(.lBold)
                                .padding()
                                .background(Color(UIColor.systemGray6))
                                .cornerRadius(5)
                                .padding()
                                .keyboardType(.numberPad)
                                .frame(width: 300)
                            ActionButton(label: PHONE_NUMBER_BUTTON, size: .medium, type: .filled, action: loginData.sendCode, isDisabed: loginData.phoneNumber.count != 10 ? true : false)
                        }
                    }
                }
                
                if loginData.error {
                }
            }
            .background(Color.white).ignoresSafeArea()
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(loginData: LoginModel())
    }
}

