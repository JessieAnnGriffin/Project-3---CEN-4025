//
//  Event.swift
//  ZooInformationSystem
//
//  Created by Jessie Ann Griffin on 10/24/20.
//

import Foundation

class Event {

    private var eventDate: Date // includes month/day/year
    private var eventTime: Date
    private var animals: [Animal] // animals to be showcased
    private var guests: [Guest] // the guest list

    init(eventDate: Date,
         eventTime: Date,
         animals: [Animal],
         guests: [Guest]) {

        self.eventDate = eventDate
        self.eventTime = eventTime
        self.animals = animals
        self.guests = guests
    }

    private func addToSchedule(schedule: Schedule) {
        print("This event has been added to the \(schedule.type) schedule")
    }

    func setDay(eventDate: Date) {
        self.eventDate = eventDate
        // need to format dates and times - should probably make a time class to keep formatting separate
    }

    func getDay() {
        print("\(eventDate), \(eventTime)")
    }

    func setTime(eventTime: Date) {
        self.eventTime = eventTime
    }
}
