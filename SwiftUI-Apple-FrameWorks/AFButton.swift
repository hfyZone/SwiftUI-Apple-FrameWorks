import SwiftUI

struct AFButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.system(size: 20, weight: .bold))
            .foregroundStyle(.white)
            .frame(width: 250, height: 50)
            .background(.red)
        // 新写法
            //.clipShape(.buttonBorder)
            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
    }
}
