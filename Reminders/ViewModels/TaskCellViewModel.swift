//
//  TaskCellViewModel.swift
//  Reminders
//
//  Created by Frank Bara on 5/23/20.
//  Copyright © 2020 BaraLabs. All rights reserved.
//

import Foundation
import Combine

class TaskCellViewModel: ObservableObject, Identifiable {
    @Published var task: Task
    
    var id: String = ""
    @Published var completionStateIconName = ""
    
    private var cancellables = Set<AnyCancellable>()
    
    init(task: Task) {
        self.task = task
        
        $task
            .map { task in
                task.completed ? "checkmark.circle.fill" : "circle"
        }
        .assign(to: \.completionStateIconName, on: self)
        .store(in: &cancellables)
        
        $task
            .map { task in
                task.id
        }
        .assign(to: \.id, on: self)
        .store(in: &cancellables)
    }
}
