import Foundation

enum MedicationStatus {
    case administered
    case refused
    case missed
    case atSchool
    case absent
}

struct MedicationLog {
    var medication: Medication
    var dateTime: Date
    var status: MedicationStatus
}
