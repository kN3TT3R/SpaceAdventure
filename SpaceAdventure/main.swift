//
//  main.swift
//  SpaceAdventure
//
//  Created by Kenneth Debruyn on 6/02/17.
//  Copyright © 2017 kN3TT3R. All rights reserved.
//

import Foundation


/*
    Add planets to planetarySystem - V1
*/
//let solarSystem = PlanetarySystem(name: "Solar System", planets: [])
//var planets = [Planet]()
//
//let planetOne = Planet(name: "P1", description: "Planet Description One", moons: [])
//let planetTwo = Planet(name: "P2", description: "Planet Description Two", moons: [])
//let planetThree = Planet(name: "P3", description: "Planet Description Three", moons: [])
//
//let moon1P1 = Moon(name: "M1P1")
//let moon1P2 = Moon(name: "M1P2")
//let moon2P2 = Moon(name: "M2P2")
//
//planetOne.addMoon(moon: moon1P1)
//planetTwo.addMoon(moon: moon1P2)
//planetTwo.addMoon(moon: moon2P2)
//
//solarSystem.addPlanet(planet: planetOne)
//solarSystem.addPlanet(planet: planetTwo)
//solarSystem.addPlanet(planet: planetThree)
//
//let adventure = SpaceAdventure(planetarySystem: solarSystem)
//adventure.start()


/*
    Use 2 Dictionaries for Planets and Moons - V2
 */
let planetData = [
    "Mercury": "A very hot planet, closest to the sun.",
    "Venus": "It's very cloudy here!",
    "Earth": "There is something very familiar about this planet.",
    "Mars": "Known as the red planet.",
    "Jupiter": "A gas giant, with a noticeable red spot.",
    "Saturn": "This planet has beautiful rings around it.",
    "Uranus": "Strangely, this planet rotates around on its side.",
    "Neptune": "A very cold planet, furthest from the sun."
]

let moonData = [
    "Mercury": ["Caduceus"],
    "Venus": [ ],
    "Earth": ["Moon"],
    "Mars": ["Phobos", "Deimos"],
    "Jupiter": ["Europa", "Ganymedes", "Io", "Callisto", "Adrastea", "Amalthea", "Thebe", "Lysithea", "Himalia"],
    "Saturn": ["Titan", "Enceladus", "Mimas", "Iapetus", "Dione", "Rhea", "Tethys", "Pandora", "Phoebe", "Hypherion"],
    "Uranus": ["Titania", "Miranda", "Umbriel", "Ariel", "Trinculo", "Oberon", "Puck", "Cordelia"],
    "Neptune": ["Triton", "Laomedeia", "Nereïde", "Halimede", "Proteur", "Galatea", "Larissa", "Sao", "Psamathe", "Neso", "Despina", "Naiad", "Thalassa"]
]


// Create all planets
let planets = planetData.map({ name, description in Planet(name: name, description: description, moons: []) })
let solarSystem = PlanetarySystem(name: "Solar System", planets: planets)


// Create all moons
for planet in planets {
    
    // Check if the name of the planet exists in the moonData dictionary
    if moonData.contains(where: { $0.key == planet.name }) {
        
        // Get the array of moons from a certain planet
        let allMoons = moonData["\(planet.name)"]!
        // For each moon in the array, create an instance to attach to the planet
        for moon in allMoons {
            planet.addMoon(moon: Moon(name: "\(moon)"))
        }
    }
}

let adventure = SpaceAdventure(planetarySystem: solarSystem)
adventure.start()






