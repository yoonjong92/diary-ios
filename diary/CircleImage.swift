//
//  CircleImage.swift
//  diary
//
//  Created by 박윤종 on 3/5/24.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("ah_ok") // 이미지
        .clipShape(Circle()) // 원형으로 만들겠다
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CircleImage()
}
