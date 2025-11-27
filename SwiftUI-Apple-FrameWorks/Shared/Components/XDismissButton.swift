import SwiftUI
struct XDismissButton: View {
    @Binding var isShowingDetailView: Bool
    var body: some View {
        HStack {
            // 左对齐右对齐的方案
            Spacer()
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label))
                    .imageScale(.large)
                    .frame(width: 30, height: 30)
            }
        }.padding()
    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(true))
}

