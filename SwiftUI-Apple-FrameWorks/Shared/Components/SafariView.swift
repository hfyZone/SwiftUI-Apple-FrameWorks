import SwiftUI
import SafariServices
struct SafariView: UIViewControllerRepresentable {
    // Swiftui提供link实现链接打开功能，此处使用uikit只是为了展示swiftui和uikit协作
    let url: URL
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
    
}
