//
//  ExperienceView.swift
//  iRajatKumar
//
//  Created by Rajat Jangra on 19/09/23.
//

import SwiftUI

struct ExperienceView: View {
    var workExperience: WorkExperience
    var body: some View {
        ZStack {
            Color.blue
                .padding(-16)
                .clipShape(RoundedRectangle(cornerRadius: 16.0))
            VStack {
                companyView
                Spacer()
                positionView
            }
            .foregroundStyle(.white)
            .padding()
        }
       
    }
    
    private var companyView: some View {
        HStack {
            Text(workExperience.company)
                .bold()
            Spacer()
            Group {
                Text(workExperience.startedAt.toString(Date.experience))
                +
                Text(" - ")
                +
                Text(workExperience.endedAt?.toString(Date.experience) ?? "Present")
            }
            .font(.caption)
        }
    }
    
    private var positionView: some View {
        HStack {
            Text(workExperience.position)
                .bold()
            Spacer()
            Text(workExperience.location)
        }
        .font(.caption)
    }
}

#Preview {
    ExperienceView(workExperience: .preview)
}
