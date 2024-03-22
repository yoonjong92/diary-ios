//
//  LoginPageView.swift
//  diary
//
//  Created by 박윤종 on 3/19/24.
//

import SwiftUI

struct LoginPageView: View {
    @ObservedObject var viewModel: LoginViewModel = LoginViewModel()
       
       var body: some View {
           VStack {
               
               Spacer()
               
               VStack {
                   TextField(
                       "email",
                       text: $viewModel.username
                   )
                   .autocapitalization(.none)
                   .disableAutocorrection(true)
                   .padding(.top, 20)
                   
                   Divider()
                   
                   SecureField(
                       "password",
                       text: $viewModel.password
                   )
                   .padding(.top, 20)
                   
                   Divider()
               }
               
               Spacer()
               
               Button(
                   action: viewModel.login,
                   label: {
                       Text("로그인")
                           .font(.system(size: 24, weight: .bold, design: .default))
                           .frame(maxWidth: .infinity, maxHeight: 60)
                           .foregroundColor(Color.white)
                           .background(Color.blue)
                           .cornerRadius(10)
                   }
               )
           }
           .padding(30)
       }
}

#Preview {
    LoginPageView()
}
