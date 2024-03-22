//
//  GetArticlesResponse.swift
//  diary
//
//  Created by 박윤종 on 3/19/24.
//

import Foundation

struct GetArticlesResponse : Decodable {
    let articles: [NewsArticleDto]
}
