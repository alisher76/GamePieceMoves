//
//  SpaceAdventure.swift
//  OOPSpaceGame
//
//  Created by Alisher Abdukarimov on 4/30/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import Foundation

class SpaceAdventure {
    let planetSystem: PlanetarySystem
    
    init(planetSystem: PlanetarySystem) {
        self.planetSystem = planetSystem
    }
    
    private func displayIntroduction() {
    print("Welcome to the \(planetSystem.name)")
    print("In this system there are \(planetSystem.planets.count) planets!")
    }
    
    
    private func responceToPromt(promt: String) -> String{
    print(promt)
    return getUserInput()
    }
    
    
    private func greetAdventurer(){
    let name = getUserInput()
    print("Well hello \(name) lets get going!")
    }
    
    private func visit(planetName: String) {
    print("Traveling to \(planetName)")
        for planet in planetSystem.planets {
            if planet.name == planetName {
            print("Arrived at \(planet) and \(planet.description)")
            }else{
            print("Sorry did not get that!")
            }
        }
    
    }
    
    
    private func determinDestination() {
    
    var decison = ""
        
        while !(decison == "Y" || decison == "N") {
        decison = responceToPromt(promt: "Would you like me to choose a destination for you? Y or N")
            if decison == "Y" || decison == "y" {
                if let planet = planetSystem.randomPlanet {
                visit(planetName: planet.name)
                }else{
                print("Sorry did not get that")
                }
            }else if decison == "N" || decison == "n" {
            let planetName = responceToPromt(promt: "What planet would you like to visit?")
                visit(planetName: planetName)
            }else{
            print("Sorry could not find that planet")
            }
        }
    }
    
    func start() {
    displayIntroduction()
        greetAdventurer()
        if !planetSystem.planets.isEmpty {
        print("Lets go to see some planets babe")
        determinDestination()
        }
    
    }
    
}
