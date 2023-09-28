//
//  WorkExperience.swift
//  iRajatKumar
//
//  Created by Rajat Jangra on 19/09/23.
//

import Foundation

struct WorkExperience: Identifiable {
    var id: String = UUID().uuidString
    var company: String
    var startedAt: Date
    var endedAt: Date?
    var responsibilities: String
    var position: String
    var location: String
    
    static var preview: WorkExperience {
        WorkExperience(company: "hedgehog lab", startedAt: .distantPast, endedAt: .now, responsibilities: "", position: "Senior iOS Engineer", location: "Newcastle upon Tyne")
    }
}
