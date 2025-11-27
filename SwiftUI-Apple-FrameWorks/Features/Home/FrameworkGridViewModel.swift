//
//  FrameworkGridViewModel.swift
//  SwiftUI-Apple-FrameWorks
//
//  Created by 韩飞洋 on 2025/11/26.
//

internal import Combine
import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework?
//    {
//        didSet {
//            isShowingDetailView = true
//        }
//    }
    @Published var isShowingDetailView = false
    let colums: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
}
