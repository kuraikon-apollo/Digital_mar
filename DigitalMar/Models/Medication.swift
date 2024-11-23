import Foundation

struct Medication: Identifiable, Codable {
    let id = UUID()
    var name: String
    var dosage: String
    var quantity: Int
    var instructions: String
    var doctor: String
    var logs: [MedicationLog] = []
}

struct MedicationLog: Identifiable, Codable {
    let id = UUID()
    var date: Date
    var status: LogStatus
}

enum LogStatus: String, Codable {
    case administered = "Administered"
    case refused = "Refused"
    case missed = "Missed"
    case atSchool = "At School"
    case absent = "Absent"
}
