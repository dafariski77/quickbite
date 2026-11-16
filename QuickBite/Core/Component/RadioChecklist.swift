import SwiftUI

struct RadioChecklist: View {
    var options: [String] = []
    var allowsMultipleSelection: Bool = false
    
    @Binding var selectedOption: [String]
    
    var body: some View {
        LazyVStack(spacing: 12) {
            ForEach(options, id: \.self) { option in
                let isSelected = selectedOption.contains(option)
                
                HStack {
                    Image(systemName: iconName(isSelected: isSelected))
                        .foregroundStyle(isSelected ? .blue : .secondary)
                        .font(.title3)
                    
                    Text(option)
                        .foregroundStyle(isSelected ? .appPrimary : .black)
                        .fontWeight(isSelected ? .bold : .regular)
                    
                    Spacer()
                }
                .padding()
                .background(isSelected ? .appPrimary.opacity(0.1) : .gray.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .onTapGesture {
                    handleSelection(for: option, isSelected: isSelected)
                }
            }
        }
    }
    
    private func handleSelection(for option: String, isSelected: Bool) {
        if allowsMultipleSelection {
            if isSelected {
                selectedOption.removeAll { $0 == option }
            } else {
                selectedOption.append(option)
            }
        } else {
            if isSelected {
                selectedOption.removeAll()
            } else {
                selectedOption = [option]
            }
        }
    }
    
    private func iconName(isSelected: Bool) -> String {
        if allowsMultipleSelection {
            return isSelected ? "checkmark.circle.fill" : "circle"
        } else {
            return isSelected ? "largecircle.fill.circle" : "circle"
        }
    }
}


#Preview {
    @Previewable @State var selectedOption: [String] = ["Meat"]
    
    RadioChecklist(
        options: ["Meat", "Chicken", "Fish", "Vegetables"],
        allowsMultipleSelection: true,
        selectedOption: $selectedOption
    )
    .padding()
}
