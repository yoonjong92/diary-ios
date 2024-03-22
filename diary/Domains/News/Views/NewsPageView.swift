//
//  NewsPage.swift
//  diary
//
//  Created by 박윤종 on 3/19/24.
//

import SwiftUI

struct NewsPageView: View {
    @StateObject private var model = NewsModel.shared
        
    var body: some View {
        List{
            ForEach(model.posts, id: \.self) { result in
                Text(result.title)
            }
        }.navigationTitle("뉴스 둘러보기")
        .onAppear {
            model.fetchData()
        }
    }
}

#Preview {
    NewsPageView()
}
