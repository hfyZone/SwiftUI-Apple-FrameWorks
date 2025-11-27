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
        NavigationView {
            ScrollView {
                ZStack {
                    LazyVGrid(columns: viewModel.colums) {
                        ForEach(MockData.frameworks) {
                            framework in
                            FrameWorkItemView(framework: framework)
                                .onTapGesture {
                                    viewModel.selectedFramework = framework
                                    viewModel.isShowingDetailView = true
                                }
                        }
                    }
                }
            }
            .navigationTitle("Apple Frameworks 🍎")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework!, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }

    }
}



#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}
