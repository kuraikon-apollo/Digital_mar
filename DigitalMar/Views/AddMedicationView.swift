import SwiftUI

struct AddMedicationView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var medications: [Medication]

    @State private var name = ""
    @State private var dosage = ""
    @State private var quantity = ""
    @State private var instructions = ""
    @State private var doctor = ""

    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
                TextField("Dosage", text: $dosage)
                TextField("Quantity", text: $quantity)
                    .keyboardType(.numberPad)
                TextField("Instructions", text: $instructions)
                TextField("Doctor/Prescriber", text: $doctor)
            }
            .navigationTitle("Add Medication")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        saveMedication()
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

    private func saveMedication() {
        guard let quantityInt = Int(quantity) else { return }
        let newMedication = Medication(
            name: name,
            dosage: dosage,
            quantity: quantityInt,
            instructions: instructions,
            doctor: doctor
        )
        medications.append(newMedication)
        dismiss()
    }
}
