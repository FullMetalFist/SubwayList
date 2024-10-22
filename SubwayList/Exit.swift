//
//  Exit.swift
//  SubwayList
//
//  Created by Michael Vilabrera on 10/21/24.
//

import Foundation

struct Exit: Hashable {
    var division: String
    var line: String
    var borough: String
    var stopName: String
    var complexID: Int
    var stationName : String
    var stationID: Int
    var gtfsStopID: String
    var daytimeRoutes: String
    var entranceType: EntranceType
    var entryAllowed: String
    var exitAllowed: String
    var entranceLatitude: Double
    var entranceLongitude: Double
    
    enum EntranceType: String, CaseIterable {
        case stair = "Stair"
        case elevator = "Elevator"
        case escalator = "Escalator"
        case door = "Door"
        case easement = "Easement"
    }
}
