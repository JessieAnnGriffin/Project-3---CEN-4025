//
//  ViewController.swift
//  ZooInformationSystem
//
//  Created by Jessie Ann Griffin on 10/24/20.
//

import Foundation
import UIKit

class ViewController: UIViewController {

    let maintenanceScheduleOne = Schedule(date: Date(), time: Date(), events: [], type: "Grassy and Dry")
    
    let habitatOne = Habitat(plants: ["Trees", "Tundra", "Boulders"], acreage: 110, hydration: "Pond", maintenance: Schedule(date: Date(), time: Date(), events: [], type: "Grassy and Dry"), animals: [])

    // bug: cannot seem to initialize other objects and use them in the initialization of an animal
    let lion = Animal(species: "Feline", size: 250, name: "Gerard", habitat: Habitat(plants: ["Trees", "Tundra", "Boulders"], acreage: 110, hydration: "Pond", maintenance: Schedule(date: Date(), time: Date(), events: [], type: "Grassy and Dry"), animals: []), diet: ["Cebu", "Gazelle"], compatibility: [])

    let eventOne = Event(eventDate: Date(), eventTime: Date(), animals: [Animal(species: "Feline", size: 250, name: "Gerard", habitat: Habitat(plants: ["Trees", "Tundra", "Boulders"], acreage: 110, hydration: "Pond", maintenance: Schedule(date: Date(), time: Date(), events: [], type: "Grassy and Dry"), animals: []), diet: ["Cebu", "Gazelle"], compatibility: [])], guests: [])

    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        animal.getName()
        animal.getID()
        animal.feed()
        animal.updateDiet()
        animal.updateHabitat()
        animal.updateSize()

        habitatOne.getVegetation()
        habitatOne.setSize(acreage: 125)
        habitatOne.performMaintenance()
        habitatOne.testWater()
        habitatOne.addAnimal(animal: lion)
        */

        maintenanceScheduleOne.addToSchedule(event: eventOne)
        maintenanceScheduleOne.checkForConflicts()
        maintenanceScheduleOne.showSchedule()
    }
}

