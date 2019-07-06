//
//  ViewController.swift
//  SoccerCoordinator
//
//  Created by Adrian on 12/1/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //MARK: Properties
    var teamSharks: [[ String : String ]] = []
    var teamRaptors: [[ String : String ]] = []
    var teamDragons: [[ String : String ]] = []
    var letters: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sortPlayers()
        writeLetter(forTeam: teamDragons)
        print(letters)
    }
    
    var players: [[ String : String ]] =  [
        ["name" : "Joe Smith", "height" : "42in", "experience" : "YES", "Guardian Names" : "Jim and Jan Smith" ],
        ["name" : "Jill Tanner", "height" : "36n", "experience" : "YES", "Guardian Names" : "Clara Tanner" ],
        ["name" : "Bill Bon", "height" : "43in", "experience" : "YES", "Guardian Names" : "Sara and Jenny Bon" ],
        ["name" : "Eva Gordon", "height" : "45in", "experience" : "NO", "Guardian Names" : "Wendy and Mike Gordon" ],
        ["name" : "Matt Gill", "height" : "40in", "experience" : "NO", "Guardian Names" : "Charles and Sylvia Gill" ],
        ["name" : "Kimmy Stein", "height" : "41in", "experience" : "NO", "Guardian Names" : "Bill and Hillary Stein" ],
        ["name" : "Sammy Adams", "height" : "45in", "experience" : "NO", "Guardian Names" : "Jeff Adams" ],
        ["name" : "Karl Saygan", "height" : "42in", "experience" : "YES", "Guardian Names" : "Heather Bledsoe" ],
        ["name" : "Suzane Greenberg", "height" : "44in", "experience" : "YES", "Guardian Names" : "Henrietta Dumas" ],
        ["name" : "Sal Dali", "height" : "41in", "experience" : "NO", "Guardian Names" : "Gala Dali" ],
        ["name" : "Joe Kavalier", "height" : "39in", "experience" : "NO", "Guardian Names" : "Sam and Elaine Kavalier" ],
        ["name" : "Ben Finkelstein", "height" : "44in", "experience" : "NO", "Guardian Names" : "Aaron and Jill Finkelstein" ],
        ["name" : "Diego Soto", "height" : "41in", "experience" : "YES", "Guardian Names" : "Robin and " ],
        ["name" : "Cloe Alaska", "height" : "47in", "experience" : "NO", "Guardian Names" : "David and Jamie Alaska" ],
        ["name" : "Arnold Willis", "height" : "43in", "experience" : "NO", "Guardian Names" : "Claire Willis" ],
        ["name" : "Phillip Helm", "height" : "44in", "experience" : "YES", "Guardian Names" : "homas Helm and Eva Jones" ],
        ["name" : "Les Clay", "height" : "42in", "experience" : "YES", "Guardian Names" : "Wynonna Brown" ],
        ["name" : "Herschel Krustofski", "height" : "45in", "experience" : "YES", "Guardian Names" : "Hyman and Rachel Krustofski" ]
    ]
    
    //sort and store players into three teams.
    func sortPlayers(){
        for player in players {
            if player["experience"] == "NO" {
                print(player["name"])
                if teamSharks.count < 3 {
                    teamSharks.append(player)
                    print("TEAMsharks \(teamSharks.count)")
                } else if teamRaptors.count < 3 {
                    teamRaptors.append(player)
                    print("TEAMRAPTORS \(teamRaptors.count)")
                } else {
                    teamDragons.append(player)
                    print("TEAMDRAGONS \(teamDragons.count)")
                }
            }
        }
        
        let counter = 6
        for player in players {
            if player["experience"] == "YES" {
                print(player["name"])
                if teamSharks.count < counter {
                    teamSharks.append(player)
                    print("TEAMsharks \(teamSharks.count)")
                } else if teamRaptors.count < counter {
                    teamRaptors.append(player)
                    print("TEAMRAPTORS \(teamRaptors.count)")
                } else {
                    teamDragons.append(player)
                    print("TEAMDRAGONS \(teamDragons.count)")
                }
            }
        }
    }
    
    /*
     Dragons - March 17, 1pm
     Sharks - March 17, 3pm
     Raptors - March 18, 1pm
     
     */
    
    func writeLetter(forTeam team: [[ String : String ]] ){
        var letter = ""
        let sharksPracticeTime = "March 17, 3pm"
        let raptorsPracticeTime = "March 17, 3pm"
        let dragonsPracticeTime = "March 17, 3pm"
        
        
        switch team {
        case teamSharks:
            for player in teamSharks {
                guard let playerName = player["name"], let guardians = player["Guardian Names"] else { return }
                
                letter = "Dear \(playerName) we would like to inform you and your guardians: \(guardians) know that you have been selected to play on the team sharks and your practice is on \(sharksPracticeTime)"
                letters.append(letter)
            }
            
        case teamRaptors:
            for player in teamRaptors {
                guard let playerName = player["name"], let guardians = player["Guardian Names"] else { return }
                
                letter = "Dear \(playerName) we would like to inform you and your guardians: \(guardians) know that you have been selected to play on the team raptors and your practice is on \(raptorsPracticeTime)"
                letters.append(letter)
            }
            
        case teamDragons:
            for player in teamDragons {
                guard let playerName = player["name"], let guardians = player["Guardian Names"] else { return }
                
                letter = "Dear \(playerName) we would like to inform you and your guardians: \(guardians) know that you have been selected to play on the team dragon and your practice is on \(dragonsPracticeTime)"
                
                letters.append(letter)
                print(letters.count)
                print(letter)
            }
            
        default:
            print("something happened that wasn't supposed to.")
        }
    }
}

