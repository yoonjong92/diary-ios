//
//  LoginPageView.swift
//  diary
//
//  Created by 박윤종 on 3/19/24.
//

import SwiftUI

struct LoginPageView: View {
    @State var email:String = "";
    @State var password:String = "";
    
    var body: some View {
        VStack {
            HStack {
                Text("Email : ")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                TextField("email", text: $email)
                    .frame(height: 40.0)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    .textFieldStyle(.roundedBorder)
            }.padding()
            HStack {
                Text("Password : ")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                TextField("email", text: $password)
                    .frame(height: 40.0)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    .textFieldStyle(.roundedBorder)
            }.padding()
            Button("로그인") {
                OnClickLoginButton();
            }
        }
    }
    
    private func OnClickLoginButton() {
        
    }
}

#Preview {
    LoginPageView()
}
