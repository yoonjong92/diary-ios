//
//  LoginRequest.swift
//  diary
//
//  Created by 박윤종 on 3/22/24.
//

import Foundation

struct LoginRequest: Encodable {
    let username: String
    let password: String
}
