//
//  ContentView.swift
//  diary
//
//  Created by 박윤종 on 3/5/24.
//

import SwiftUI
import SwiftData

struct HomePageView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: LoginPageView()) {
                    Text("로그인")
                }
                NavigationLink(destination: NewsPageView()) {
                    Text("뉴스")
                }
            }
            .navigationTitle("diary")
        }
    }
}

#Preview {
    HomePageView()
}
