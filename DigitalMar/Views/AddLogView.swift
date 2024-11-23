import SwiftUI

struct AddLogView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var medication: Medication
    @State private var selectedStatus: LogStatus = .administered

    var body: some View {
        NavigationView {
            Form {
                Picker("Status", selection: $selectedStatus) {
                    ForEach(LogStatus.allCases, id: \.self) { status in
                        Text(status.rawValue).tag(status)
                    }
                }
            }
            .navigationTitle("Add Log")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        saveLog()
                    }
                }
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
            }
        }
    }

    private func saveLog() {
        let newLog = MedicationLog(date: Date(), status: selectedStatus)
        medication.logs.append(newLog)
        dismiss()
    }
}
