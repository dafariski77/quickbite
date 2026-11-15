import SwiftUI

struct RemoteImage: View {
    let url: String
    var width: CGFloat? = 80
    var height: CGFloat? = 100
    var cornerRadius: CGFloat = 16

    var body: some View {
        AsyncImage(url: URL(string: url)) { phase in
            switch phase {
            case .empty:
                ZStack {
                    Color(.secondarySystemFill)
                    ProgressView()
                }
            case .success(let image):
                image
                    .resizable()
                    .scaledToFill()
            case .failure:
                ZStack {
                    Color(.secondarySystemFill)
                    Image(systemName: "photo")
                        .foregroundStyle(.secondary)
                }
            @unknown default:
                EmptyView()
            }
        }
        .frame(width: width, height: height)
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous))
    }
}
