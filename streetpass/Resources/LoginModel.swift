//
//  LoginModel.swift
//  streetpass
//
//  Created by Frank Dulko on 8/31/23.
//

import SwiftUI
import FirebaseAuth

class LoginModel: ObservableObject {
    
    @Published var countryCode = "1"
    @Published var phoneNumber = ""
    
    @Published var errorMsg = ""
    @Published var error = false
    
    @Published var verificationId = ""
    
    @Published var goToVerify = false
    
    @Published var code = ""
     
    @Published var loading = false
    
    @AppStorage("log_Status") var status = false
    
    func sendCode(){
        let number = "+\(countryCode)\(phoneNumber)"
        
        loading = true

        PhoneAuthProvider.provider().verifyPhoneNumber(number, uiDelegate: nil) {
            (CODE, err) in

            self.loading = false
            
            if let error = err {
                self.errorMsg = error.localizedDescription
                withAnimation{self.error.toggle()}
                return
            }
            self.verificationId = CODE ?? ""
            self.goToVerify.toggle()
        }
    }
    
    func verifyCode(){
        let credential = PhoneAuthProvider.provider().credential(withVerificationID: self.verificationId, verificationCode: code)
        
        loading = true
        
         Auth.auth().signIn(with: credential) { (res, err) in
             
             self.loading = false
             
             if let error = err {
                 self.errorMsg = error.localizedDescription
                 withAnimation{self.error.toggle()}
                 return
             }
             
             withAnimation{self.status = true}
         }
    }
    
    func requestCode(){
        sendCode()
        withAnimation{
            self.errorMsg = "Code Sent Successfully!"
            self.error.toggle()
        }
    }
}

