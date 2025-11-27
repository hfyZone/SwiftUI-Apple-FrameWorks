import SwiftUI

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
                .foregroundStyle(Color(.label))
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

#Preview {
    FrameWorkItemView(framework: MockData.sampleFramework)
}
