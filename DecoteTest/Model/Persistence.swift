//
//  Persistence.swift
//  DecoteTest
//
//  Created by Maxim Mitin on 30.10.21.
//

import CoreData

struct PersistenceController {
    
    // MARK: - 1. Persistance Controoler
    static let shared = PersistenceController()

    //MARK: - 2. Persistance Container
    let container: NSPersistentContainer

    //MARK: - 3. Init
    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "DecoteTest")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
    }
    //MARK: - 4. Preview
    static var preview: PersistenceController = {
        let result = PersistenceController(inMemory: true)
        let viewContext = result.container.viewContext
        for i in 0..<5 {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()
            newItem.task = "Sample task №\(i)"
            newItem.completion = false
            newItem.id = UUID()
        }
        do {
            try viewContext.save()
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
        return result
    }()
}
