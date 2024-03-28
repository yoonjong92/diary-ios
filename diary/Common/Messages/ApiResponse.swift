//
//  ApiResponse.swift
//  diary
//
//  Created by 박윤종 on 3/28/24.
//

import Foundation

struct ApiResponse<T>: Decodable where T : Decodable {
    let status : String
    let data : T
    let message : String
}
