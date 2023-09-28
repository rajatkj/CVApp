//
//  Date+Extension.swift
//  iRajatKumar
//
//  Created by Rajat Jangra on 19/09/23.
//

import Foundation

extension Date {
    func toString(_ format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
    
    static let experience: String = "MMM, YYYY"
}
