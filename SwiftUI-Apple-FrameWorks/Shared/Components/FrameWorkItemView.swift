import SwiftUI

struct FrameWorkItemView: View {
    var framework: Framework
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
                .aspectRatio(contentMode: .fit)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}

#Preview {
    FrameWorkItemView(framework: MockData.sampleFramework)
}
