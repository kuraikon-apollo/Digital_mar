# Digital_mar
V1.0.0
A digital Medication Administration Record. Devlopment of an app for Foster Parents and Foster Agencies to use to keep track of foster childrens medication administration.
File Structure
DigitalMar/
├── ContentView.swift
├── Medication.swift
├── MedicationListView.swift
├── AddMedicationView.swift
├── DigitalMarApp.swift (formerly main.swift)
└── Assets.xcassets (image and color assets)

File Structure 2
MedicationTrackerApp/
├── ContentView.swift          // Main entry point, shows MedicationListView
├── Views/
│   ├── MedicationListView.swift  // Lists all saved medications
│   ├── MedicationInputView.swift // Input form for adding medications
├── Models/
│   └── Medication.swift         // Data model for Medication
├── Data/
│   └── MedicationStore.swift    // Handles data persistence (e.g., UserDefaults or Core Data)

V1.0.1
MyMedicationApp/
├── Sources/
│   ├── ContentView.swift
│   ├── Medication.swift
├── Package.swift (optional for Swift packages)
├── README.md

