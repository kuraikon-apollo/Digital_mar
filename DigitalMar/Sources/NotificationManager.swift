import Foundation
import UserNotifications

class NotificationManager {
    func scheduleReminder(for medication: Medication, at time: Date) {
        let content = UNMutableNotificationContent()
        content.title = "Time to take \(medication.name)"
        content.body = "Don't forget to take your medication: \(medication.instructions)"
        content.sound = UNNotificationSound.default

        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time.timeIntervalSinceNow, repeats: false)
        let request = UNNotificationRequest(identifier: medication.name, content: content, trigger: trigger)

        UNUserNotificationCenter.current().add(request)
    }
}
