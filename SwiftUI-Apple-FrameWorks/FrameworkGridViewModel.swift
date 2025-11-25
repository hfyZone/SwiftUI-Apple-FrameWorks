//
//  FrameworkGridViewModel.swift
//  SwiftUI-Apple-FrameWorks
//
//  Created by 韩飞洋 on 2025/11/26.
//

import SwiftUI
internal import Combine

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework?{
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
    
}
 
