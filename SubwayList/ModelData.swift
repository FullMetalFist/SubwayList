//
//  ModelData.swift
//  SubwayList
//
//  Created by Michael Vilabrera on 10/22/24.
//

import Foundation

@Observable
class ModelData {
    var exits: [Exit] = load("MTA_Subway_Stations_20250219.csv")
}

//class SubwayStationFetcher: ObservableObject {
//    @Published var exits: [Exit] = []
//    
//    let urlString = "https://data.ny.gov/resource/39hk-dx4f.json"
//    
//    enum FetchError: Error {
//        case badRequest
//        case badJSON
//    }
//    
//    func fetchData() async throws {
//        guard let url = URL(string: urlString) else { return }
//        let (data, response) = try await URLSession.shared.data(for: URLRequest(url: url))
//        guard (response as? HTTPURLResponse)?.statusCode == 200 else { throw FetchError.badRequest }
//        
//        Task { @MainActor in
//            exits = try JSONDecoder().decode([Exit].self, from: data)
//        }
//    }
//}

fileprivate func load(_ filename: String) -> [Exit] {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else { fatalError("Couldn't find \(filename) in main bundle")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle")
    }
    guard let blob = String(data: data, encoding: .utf8) else { fatalError("Couldn't convert \(filename)") }
    let rows = blob.components(separatedBy: "\n").dropFirst()
                
    let exits: [Exit] = rows.map { row in
        let csvColumns = row.components(separatedBy: ",")
        var tempExit = Exit(division: "div", line: "l", borough: "b", stopName: "s", complexID: -1, stationName: "s", stationID: -2, gtfsStopID: "g", daytimeRoutes: "d", entranceType: .junk, entryAllowed: "goin in", exitAllowed: "goin out", entranceLatitude: 0.0, entranceLongitude: 0.0)
        for (index, column) in csvColumns.enumerated() {
            switch index {
            case 0:
                tempExit.division = column
            case 1:
                tempExit.line = column
            case 2:
                tempExit.borough = column
            case 3:
                tempExit.stopName = column
            case 4:
                let complexID = Int(column) ?? -1
                tempExit.complexID = complexID
            case 5:
                tempExit.stationName = column
            case 6:
                let stationID = Int(column) ?? -2
                tempExit.stationID = stationID
            case 7:
                tempExit.gtfsStopID = column
            case 8:
                tempExit.daytimeRoutes = column
            case 9:
                let entranceType = Exit.EntranceType(rawValue: column) ?? .stair
                tempExit.entranceType = entranceType
            case 10:
                tempExit.entryAllowed = column
            case 11:
                tempExit.exitAllowed = column
            case 12:
                let entranceLatitude = Double(column) ?? 0.0
                tempExit.entranceLatitude = entranceLatitude
            case 13:
                let entranceLongitude = Double(column) ?? 0.0
                tempExit.entranceLongitude = entranceLongitude
            default:
                break
            }
        }
        return tempExit
    }
    return exits
}
