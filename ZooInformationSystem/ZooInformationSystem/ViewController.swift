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
    
    let habitatOne = Habitat(plants: ["Trees", "Tundra", "Boulders"], acreage: 110, hydration: "Pond", maintenance: maintenanceScheduleOne, animals: [])

    let animal = Animal(species: "Lion", size: 250, name: "Gerard", habitat: habitatOne, diet: ["Cebu", "Gazelle"], compatibility: [])

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

