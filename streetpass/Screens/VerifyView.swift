//
//  VerifyView.swift
//  streetpass
//
//  Created by Frank Dulko on 8/31/23.
//

import SwiftUI

struct VerifyView: View {
    
    @ObservedObject var loginData : LoginModel
    
    var body : some View{
        ZStack{
            VStack{
                VStack{
                    if loginData.loading {
                            ProgressView()
                                .padding()
                                .scaleEffect(2)
                    }
                    else{
                        TextView(text: VERIFY_PROMPT, type: .title)
                        ActionButton(label: VERIFY_RESEND, size: .small, type: .plain, action: loginData.requestCode)
                        TextField("", text: $loginData.code.max(6))
                            .multilineTextAlignment(.center)
                            .font(.lBold)
                            .padding()
                            .background(Color(UIColor.systemGray6))
                            .cornerRadius(5)
                            .padding()
                            .keyboardType(.numberPad)
                            .frame(width: 300)
                        ActionButton(label: VERIFY_BUTTON, size: .medium, type: .filled, action: loginData.verifyCode, isDisabed: loginData.code.count != 6 ? true : false)
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

struct VerifyView_Previews: PreviewProvider {
    static var previews: some View {
        VerifyView(loginData: LoginModel())
    }
}
