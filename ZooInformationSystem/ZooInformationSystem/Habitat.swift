//
//  Habitat.swift
//  ZooInformationSystem
//
//  Created by Jessie Ann Griffin on 10/24/20.
//

import Foundation

class Habitat {
    private var plants: [String] // plant life
    private var acreage: Int // size
    private var hydration: String // water source
    private var maintenance: Schedule // maintenance schedule
    private var animals: [Animal]

    init(plants: [String] = [],
         acreage: Int,
         hydration: String,
         maintenance: Schedule,
         animals: [Animal]) {

        self.plants = plants
        self.acreage = acreage
        self.hydration = hydration
        self.maintenance = maintenance
        self.animals = animals
    }

    func getVegetation() {
        print("This habitat contains \(plants)")
    }

    func setSize(acreage: Int) {
        self.acreage = acreage
        print("The habitat is \(acreage) acres.")
    }

    func performMaintenance() {
        print("Maintenance has been performed according to the \(maintenance.type)")
    }

    func testWater() {
        print("The treatment of the \(hydration) is acceptable")
    }

    func addAnimal(animal: Animal) {
        animals.append(animal)
        animal.getName()
        print(" has been added to the habitat")
    }
}
