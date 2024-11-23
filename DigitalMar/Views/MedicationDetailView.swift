import SwiftUI

struct MedicationDetailView: View {
    @State var medication: Medication
    @State private var newLogStatus: LogStatus = .administered
    @State private var showAddLog = false

    var body: some View {
        VStack {
            List {
                Section(header: Text("Details")) {
                    Text("Name: \(medication.name)")
                    Text("Dosage: \(medication.dosage)")
                    Text("Quantity: \(medication.quantity)")
                    Text("Instructions: \(medication.instructions)")
                    Text("Doctor: \(medication.doctor)")
                }

                Section(header: Text("Logs")) {
                    ForEach(medication.logs) { log in
                        HStack {
                            Text(log.date, style: .date)
                            Spacer()
                            Text(log.status.rawValue)
                        }
                    }
                }
            }

            Button(action: { showAddLog = true }) {
                Label("Add Log", systemImage: "plus.circle")
            }
            .padding()
            .sheet(isPresented: $showAddLog) {
                AddLogView(medication: $medication)
            }
        }
        .navigationTitle(medication.name)
    }
}
