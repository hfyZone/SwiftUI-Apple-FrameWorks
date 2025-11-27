//
//  ContentView.swift
//  SwiftUI-Apple-FrameWorks
//
//  Created by 韩飞洋 on 2025/11/25.
//

import SwiftUI

struct FrameworkMainView: View {
    @StateObject var viewModel = FrameworkMainViewModel()
    // View应该只关心页面展示
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) {
                    framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)) {
                        FrameWorkItemView(framework: framework)
                    }
                }
            }
            .navigationTitle("Apple Frameworks 🍎")
        }

    }
}



#Preview {
    FrameworkMainView()
        .preferredColorScheme(.dark)
}
