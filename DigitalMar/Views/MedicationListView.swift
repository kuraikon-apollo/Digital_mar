import SwiftUI

struct MedicationListView: View {
    @State private var medications: [Medication] = []
    @State private var showAddMedication = false

    var body: some View {
        NavigationView {
            List {
                ForEach(medications) { medication in
                    NavigationLink(destination: MedicationDetailView(medication: medication)) {
                        Text(medication.name)
                    }
                }
                .onDelete(perform: deleteMedication)
            }
            .navigationTitle("DigitalMar")
            .toolbar {
                Button(action: { showAddMedication = true }) {
                    Label("Add Medication", systemImage: "plus")
                }
            }
        }
        .sheet(isPresented: $showAddMedication) {
            AddMedicationView(medications: $medications)
        }
    }

    private func deleteMedication(at offsets: IndexSet) {
        medications.remove(atOffsets: offsets)
    }
}
