//
//  CelestialBody.swift
//  Solar System
//
//  Created by Vincent Spitale on 10/19/20.
//

import Foundation

struct CelestialBody: Identifiable, Hashable {
    init(name: String, radius: Double, mass: Double, numMoons: UInt?, yearInEarthDays: Double?, distanceFromSun: Double) {
        self.name = name
        self.radius = radius
        self.mass = mass
        self.numMoons = numMoons
        self.yearInEarthDays = yearInEarthDays
        self.distanceFromSun = distanceFromSun
    }
    var id: Double {return distanceFromSun}
    let name: String
    // radius in kilometers
    let radius: Double
    // mass in kg
    let mass: Double
    // planet's count of moons
    let numMoons: UInt?
    // planet's year in earth days
    let yearInEarthDays: Double?
    // distance from the Sun in kilometers
    let distanceFromSun: Double
    
    static func loadSolarSystem() -> [CelestialBody] {
        return [
            CelestialBody(name: "Sun", radius: 696340.0, mass: 2.0 * pow(10, 30), numMoons: nil, yearInEarthDays: nil, distanceFromSun: 0.0),
            CelestialBody(name: "Mercury", radius: 2439.7, mass: 3.285 * pow(10, 23), numMoons: 0, yearInEarthDays: 88.0, distanceFromSun: 52588000),
            CelestialBody(name: "Venus", radius: 6051.8, mass: 4.867 * pow(10, 24), numMoons: 0, yearInEarthDays: 225.0, distanceFromSun: 107510000),
            CelestialBody(name: "Earth", radius: 6371, mass: 3.9722 * pow(10, 24), numMoons: 1, yearInEarthDays: 365.25, distanceFromSun: 148956052.61),
            CelestialBody(name: "Mars", radius: 3389.5, mass: 6.39 * pow(10, 23), numMoons: 2, yearInEarthDays: 687, distanceFromSun: 214010565.12),
            CelestialBody(name: "Jupiter", radius: 69911, mass: 1.898 * pow(10, 27), numMoons: 79, yearInEarthDays: 4333, distanceFromSun: 766546640.64),
            CelestialBody(name: "Saturn", radius: 58232, mass: 5.683 * pow(10, 27), numMoons: 82, yearInEarthDays: 10759, distanceFromSun: 1492907961.6),
            CelestialBody(name: "Uranus", radius: 25362, mass: 8.681 * pow(10, 25), numMoons: 27, yearInEarthDays: 30687, distanceFromSun: 2959100812.8),
            CelestialBody(name: "Neptune", radius: 24622, mass: 1.024 * pow(10, 26), numMoons: 14, yearInEarthDays: 60190, distanceFromSun: 4476229401.6)
        ]
    }
}
