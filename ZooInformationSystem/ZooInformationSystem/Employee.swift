//
//  Employee.swift
//  ZooInformationSystem
//
//  Created by Jessie Ann Griffin on 10/24/20.
//

import Foundation

class Employee {

    private var name: String // employee full name
    private var certifications: [String] // list of employee certifications
    private var id: UUID // autogenerated database ID
    private var tasks: [String] // list of assigned tasks
    private var payRate: Double // needs to be formatted into dollar amount
    private var employeeSchedule: Schedule

    init(name: String,
         certifications: [String] = [],
         id: UUID = UUID(),
         tasks: [String] = [],
         payRate: Double,
         employeeSchedule: Schedule) {

        self.name = name
        self.certifications = certifications
        self.id = id
        self.tasks = tasks
        self.payRate = payRate
        self.employeeSchedule = employeeSchedule
    }

    func getName() {
        print("\(name)")
    }

    func addToSchedule() {
        print("\(tasks) was added to \(name)'s schedule")
    }

    func assignTasks(task: String) {
        tasks.append(task)
        print("\(task) was added to \(name)'s list of tasks:")
        for i in tasks {
            print(i)
        }
    }

    func updateTasks(task: String) {
        // this method is meant to reassign a task to a different one
    }

    func updateCerts(certification: String) {
        certifications.append(certification)
        print("\(certification) was added to \(name)'s list of certifications:")
        for i in certifications {
            print(i)
        }
    }
}
