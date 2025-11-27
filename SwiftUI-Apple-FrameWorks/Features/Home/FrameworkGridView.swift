//
//  ContentView.swift
//  SwiftUI-Apple-FrameWorks
//
//  Created by 韩飞洋 on 2025/11/25.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    // View应该只关心页面展示
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.colums) {
                    ForEach(MockData.frameworks) {
                        framework in
                        NavigationLink(value: framework) {
                            FrameWorkItemView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("Apple Frameworks 🍎")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
        }

    }
}



#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}
