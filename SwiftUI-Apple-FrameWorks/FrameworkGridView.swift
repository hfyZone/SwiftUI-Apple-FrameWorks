//
//  ContentView.swift
//  SwiftUI-Apple-FrameWorks
//
//  Created by 韩飞洋 on 2025/11/25.
//

import SwiftUI

struct FrameworkGridView: View {
    let colums: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    var body: some View {
        ZStack {
            backgroundView()
            LazyVGrid(columns: colums){
                ForEach(MockData.frameworks){
                    framework in
                    CategoryItemView(framework: framework)
                }
            }
        }

    }
}

struct backgroundView: View {
    var body: some View {
        Color(.darkGray)
            .ignoresSafeArea()
    }
}

struct CategoryItemView: View {
    var framework: Framework
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode: .fit)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .foregroundStyle(.white)

        }
    }
}

#Preview {
    FrameworkGridView()
}
