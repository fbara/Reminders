//
//  Task.swift
//  Reminders
//
//  Created by Frank Bara on 5/23/20.
//  Copyright © 2020 BaraLabs. All rights reserved.
//

import Foundation

struct Task: Identifiable {
    var id: String = UUID().uuidString
    var title: String
    var completed: Bool
}

#if DEBUG

let testDataTasks = [
    Task(title: "Implement the UI", completed: true),
    Task(title: "Connect to Firebase", completed: false),
    Task(title: "???", completed: false),
    Task(title: "Profit!!", completed: false)
]

#endif
