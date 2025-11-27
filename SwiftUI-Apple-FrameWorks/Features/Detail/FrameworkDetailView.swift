//
//  FrameworkInfoView.swift
//  SwiftUI-Apple-FrameWorks
//
//  Created by 韩飞洋 on 2025/11/26.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
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
                AFButton(title: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString)!)
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
