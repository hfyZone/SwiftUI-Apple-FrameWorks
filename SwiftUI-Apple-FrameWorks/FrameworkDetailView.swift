//
//  FrameworkInfoView.swift
//  SwiftUI-Apple-FrameWorks
//
//  Created by 韩飞洋 on 2025/11/26.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    var body: some View {
        VStack {
            HStack {
                // 左对齐右对齐的方案
                Button {
                    
                } label: {
                    Image(systemName: "chevron.backward")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 30, height: 30)
                }
                Spacer()
            }.padding()
            

            FrameWorkItemView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                
            } label: {
                AFButton(title: "Learn More")
            }

        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework).preferredColorScheme(.dark)
}
