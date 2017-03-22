//
//  Planet.swift
//  SpaceAdventure
//
//  Created by Kenneth Debruyn on 8/02/17.
//  Copyright © 2017 kN3TT3R. All rights reserved.
//

import Foundation

class Planet {
    
    
    // MARK: - Properties
    let name: String
    let description: String
    var moons: [Moon]
    
    
    // MARK: - Initializer
    init(name: String, description: String, moons: [Moon]) {
        self.name = name
        self.description = description
        self.moons = moons
    }
    
    
    // MARK: - Functions
    func addMoon(moon: Moon) {
        moons.append(moon)
    }
    
    func hasMoon(named moonName: String) -> Bool {
        for moon in moons {
            if moon.hasName(moonName) { return true }
        }
        return false
    }
    
    func hasMoons() -> Bool {
        return !moons.isEmpty
    }
    
    func hasName(_ name: String) -> Bool {
        if self.name == name {
            return true
        } else {
            return false
        }
    }
    
    func amountMoons() -> Int {
        return moons.count
    }
    
    func createStringOfMoonNames() -> String {
        let moonNames = moons.map({"\($0.name)"}).joined(separator: ", ")
        return moonNames
    }
    
    func printMoons() {
        
        let moonNames = self.createStringOfMoonNames()
        let amountMoons = self.amountMoons()
        
        if amountMoons == 1 {
            print("\(self.name) has \(amountMoons) moon called: \(moonNames)")
        }
        else {
            print("\(self.name) has \(amountMoons) moons called: \(moonNames)")
        }
    }
    
}









