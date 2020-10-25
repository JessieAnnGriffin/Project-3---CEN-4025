//
//  Schedule.swift
//  ZooInformationSystem
//
//  Created by Jessie Ann Griffin on 10/24/20.
//

import Foundation

class Schedule {

    private var date: Date // includes month/day/year
    private var time: Date
    private var events: [Event] // the thing to be scheduled
    var type: String // the child schedule to add the event to 

    init(date: Date,
         time: Date,
         events: [Event],
         type: String) {

        self.date = date
        self.time = time
        self.events = []
        self.type = type
    }

    func addToSchedule(event: Event) {
        events.append(event)
        print("\(event) was added to \(type)'s list of events:")
        for i in events {
            print(i)
        }
    }

    func updateSchedule() {
        // This should be used to change an event already on the schedule
    }

    func checkForConflicts() {
        print("Events have been compared and conflicts were/were not found.")
    }

    func showSchedule() {
        print("\(events)")
    }

    func changeView(viewType: String) { // a View type (ie. day/week/month) would need to be created and passed in
        // prints events based on view type
    }
}
