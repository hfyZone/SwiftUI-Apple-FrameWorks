//
//  FrameworkInfoView.swift
//  SwiftUI-Apple-FrameWorks
//
//  Created by 韩飞洋 on 2025/11/26.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView: Bool = false
    var body: some View {
        VStack {
            FrameWorkItemView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                isShowingSafariView = true
            } label: {
                // 使用apple的默认
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.glassProminent)
            .controlSize(.extraLarge)
            .buttonBorderShape(.automatic)
            .tint(.red)
        }.fullScreenCover(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString)!)
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(true)).preferredColorScheme(.dark)
}
