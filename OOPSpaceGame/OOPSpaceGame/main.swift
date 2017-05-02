//
//  main.swift
//  OOPSpaceGame
//
//  Created by Alisher Abdukarimov on 4/30/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import Foundation

let systemName = "Solar System"
let planetData = ["Earth": "I love this planet as its mine )))", "Mars": "I believe we can go there soon", "Moon":" Moon is our neighbor and our friend", "Sun": "We cant neccesseraly go there but we can get close to see good stuff"]

let planets = planetData.map { name,description in Planet(name: name, description: description)}
let solarSystem = PlanetarySystem(name: systemName, planets: planets)

let spaceAdventure = SpaceAdventure(planetSystem: solarSystem)
spaceAdventure.start()
