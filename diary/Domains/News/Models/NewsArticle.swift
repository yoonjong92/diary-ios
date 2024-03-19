//
//  ArticleModel.swift
//  diary
//
//  Created by 박윤종 on 3/19/24.
//

import Foundation

struct NewsArticle: Decodable, Hashable{
    let title: String
    let url: String
    let urlToImage: String?
}
