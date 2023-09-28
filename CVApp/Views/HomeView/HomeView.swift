//
//  HomeView.swift
//  iRajatKumar
//
//  Created by Rajat Jangra on 19/09/23.
//

import SwiftUI

private enum CoordinateSpaces {
        case scrollview
}

struct HomeView: View {

    @State var experiences: [WorkExperience] = [.preview, .preview, .preview]
    
    var body: some View {
        ScrollView {
            
            ZStack(alignment: .bottomLeading) {
                
                headerImage
                
                LinearGradient(
                    colors: [.clear, .black.opacity(0.8)],
                    startPoint: .center,
                    endPoint: .bottom)
                introView
            }
            
            workExperienceList
            
        }
        .ignoresSafeArea(.all)
    }
    
    private var headerImage: some View {
        Image("rajat")
            .resizable()
            .scaledToFill()
            .frame(height: 350)
            .clipped()

    }
    
    private var introView: some View {
        VStack(alignment: .leading) {
            Text("Rajat Kumar")
               .font(.title)
               .bold()
            Text("iOS Developer")
                .font(.caption)
                .bold()
            Text("B.Tech. Computer Science And Engineering")
                .font(.caption)
        }
        .foregroundStyle(.white)
        .padding()
    }
    
    private var workExperienceList: some View {
        VStack(alignment: .leading) {
            Text("Work Experience")
               .font(.title3)
               .padding(.top)
            ForEach(experiences) { experience in
                ExperienceView(workExperience: experience)
            }
        }
        .padding(.horizontal)
    }
}


#Preview {
    HomeView()
}
