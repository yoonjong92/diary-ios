//
//  ContentView.swift
//  diary
//
//  Created by 박윤종 on 3/5/24.
//

import SwiftUI
import SwiftData

struct HomeView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: LoginPageView()) {
                    Text("로그인")
                }
                
            }
            .navigationTitle("diary")
        }
    }
}

#Preview {
    HomeView()
        .modelContainer(for: Item.self, inMemory: true)
}
