//
//  PlanetarySystem.swift
//  SpaceAdventure
//
//  Created by Kenneth Debruyn on 6/02/17.
//  Copyright © 2017 kN3TT3R. All rights reserved.
//

import Foundation

class PlanetarySystem {
    
    
    
    // MARK: - Properties
    let name: String
    private var planets: [Planet]
    
    
    
    // MARK: - Initializer
    init(name: String, planets: [Planet]) {
        self.name = name
        self.planets = planets
    }
    
    
    
    // MARK: - Functions
    func determinePlanet(destination: String) {
        for planet in self.planets {
            if destination == planet.name {
                print("Travelling to \(destination). \(planet.description)")
                if planet.hasMoons() {
                    planet.printMoons()
                } else {
                    print("Sorry, \(planet.name) has no moons.")
                }
            }
        }
    }
    
    func hasMoons() -> Bool {
        return self.planets.reduce(false, {$1.hasMoons() || $0 == true})
    }
    
    func printMoons() {
        for planet in self.planets {
            if planet.hasMoons() {
                planet.printMoons()
            } else {
                print("\(planet.name) has no moons.")
            }
        }
    }


    func addPlanet(planet: Planet) {
        planets.append(planet)
    }
    
    func hasPlanet(named planetName: String) -> Bool {
        for planet in planets {
            if planet.hasName(planetName) { return true }
        }
        return false
    }
    
    func hasPlanets() -> Bool {
        return !planets.isEmpty
    }
    
    func amountPlanets() -> Int {
        return planets.count
    }
    
    func createStringOfPlanetNames(planets: [Planet]) -> String {
        let planetNames = planets.map({"\($0.name)"}).joined(separator: ", ")
        return planetNames
    }

    func createStringOfPlanetNames() -> String {
        let planetNames = planets.map({"\($0.name)"}).joined(separator: ", ")
        return planetNames
    }

    
    func generateRandomPlanet() -> Planet {
        // random with .random()
        //let planetIndex = Int.random(range: 0..<planetarySystem.planets.count)
        //let destination = planetarySystem.planets[planetIndex].name
        
        // random with arc4random_uniform()
        let planetIndex = arc4random_uniform(UInt32(self.amountPlanets()))
        //let destination = self.planets[Int(planetIndex)].name
        let planet = self.planets[Int(planetIndex)]
        return planet
    }
    
}








