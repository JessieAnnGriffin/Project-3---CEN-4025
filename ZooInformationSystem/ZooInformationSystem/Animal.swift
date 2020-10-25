//
//  Animal.swift
//  ZooInformationSystem
//
//  Created by Jessie Ann Griffin on 10/24/20.
//

import Foundation

class Animal {
    private var species: String
    private var size: Int
    private var name: String
    private var id: UUID
    private var habitat: Habitat
    private var diet: [String] // a list of foods this animal can/should eat
    private var compatibility: [Animal] // list of animals with which this animal can cohabitat harmoniously

    init(species: String,
         size: Int,
         name: String,
         id: UUID = UUID(),
         habitat: Habitat,
         diet: [String],
         compatibility: [Animal]) {

        self.species = species
        self.size = size
        self.name = name
        self.id = id
        self.habitat = habitat
        self.diet = diet
        self.compatibility = compatibility
    }

    func setID() {
        self.id = UUID()
        print("This animal's ID is changed to: \(self.id)")
    }

    func getID() {
        print("This animal's ID is: \(self.id)")
    }

    func getName() {
        print("This animal's name is: \(self.name)")
    }

    func feed() {
        // bug: needs list formatting
        print("\(self.name) receives rations of \(self.diet) at regular intervals")
    }

    func updateDiet() {
        print("To update \(self.name)'s diet add changes here...")
    }

    func updateHabitat() {
        print("To change \(self.name)'s habitat click here.")
    }

    func updateSize() {
        print("To update \(self.name)'s size and weight click here.")
    }
}
