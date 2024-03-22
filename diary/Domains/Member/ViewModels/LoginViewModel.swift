//
//  LoginViewModel.swift
//  diary
//
//  Created by 박윤종 on 3/22/24.
//

import Foundation

class LoginViewModel: ObservableObject {

    @Published var username: String = ""
    @Published var password: String = ""

    func login() {
        LoginAction(
            parameters: LoginRequest(
                username: username,
                password: password
            )
        ).call { _ in
            // Login successful, navigate to the Home screen
        }
    }
}
