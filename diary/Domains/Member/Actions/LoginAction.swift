//
//  MemberApiRepository.swift
//  diary
//
//  Created by 박윤종 on 3/22/24.
//

import Foundation

struct LoginAction {
    
    var parameters: LoginRequest
    
    func call(completion: @escaping (LoginResponse) -> Void) {
        DiaryApiUtils.post(path: "api/member/login", body: parameters, completion: completion)
    }
}
