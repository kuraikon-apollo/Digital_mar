import SwiftUI

struct ContentView: View {
    @State private var medications: [Medication] = []
    @State private var logs: [MedicationLog] = []

    var body: some View {
        NavigationView {
            VStack {
                List(medications, id: \.name) { medication in
                    Text(medication.name)
                    Button("Quick Administer") {
                        administerMedication(medication)
                    }
                }
                .navigationBarTitle("DigitalMar")
            }
        }
    }

    func administerMedication(_ medication: Medication) {
        let log = MedicationLog(medication: medication, dateTime: Date(), status: .administered)
        logs.append(log)
        // Handle notification and further processing here
    }
}
