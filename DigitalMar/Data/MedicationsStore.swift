import Combine // Required for ObservableObject and @Published

class MedicationsStore: ObservableObject {
    @Published var medications: [Medication] = []


    private let saveKey = "medications"

    init() {
        loadMedications()
    }

    func addMedication(_ medication: Medication) {
        medications.append(medication)
        saveMedications()
    }

    func saveMedications() {
        if let encoded = try? JSONEncoder().encode(medications) {
            UserDefaults.standard.set(encoded, forKey: saveKey)
        }
    }

    func loadMedications() {
        if let data = UserDefaults.standard.data(forKey: saveKey),
           let decoded = try? JSONDecoder().decode([Medication].self, from: data) {
            medications = decoded
        }
    }
}
