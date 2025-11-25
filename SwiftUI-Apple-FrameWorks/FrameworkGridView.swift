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
        NavigationView{
            ScrollView {
                ZStack {
                    LazyVGrid(columns: colums){
                        ForEach(MockData.frameworks){
                            framework in
                            FrameWorkItemView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("Apple Frameworks 🍎")
        }
        

    }
}



struct FrameWorkItemView: View {
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
        }
        .padding()
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}
