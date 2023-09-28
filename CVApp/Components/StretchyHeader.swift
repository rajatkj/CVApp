//
//  StretchyHeader.swift
//  iRajatKumar
//
//  Created by Rajat Jangra on 19/09/23.
//

import SwiftUI

public struct ScrollViewHeader<Content: View>: View {

    /**
     Create a stretchable scroll view header.
     */
    public init(
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.content = content
    }

    private let content: () -> Content

    public var body: some View {
        GeometryReader { geo in
            content()
                .stretchable(in: geo)
        }
    }
}

private extension View {

    @ViewBuilder
    func stretchable(in geo: GeometryProxy) -> some View {
        let width = geo.size.width
        let height = geo.size.height
        let minY = geo.frame(in: .global).minY
        let useStandard = minY <= -300
        self.frame(width: width, height: height + (useStandard ? 0 : minY))
            .offset(y: useStandard ? 0 : -minY)
    }
}

struct ScrollViewHeader_Previews: PreviewProvider {

    static var previews: some View {
        NavigationView {
            ScrollView {
                ScrollViewHeader {
                    ZStack(alignment: .bottomLeading) {
                        LinearGradient(
                            colors: [.blue, .yellow],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                        LinearGradient(
                            colors: [.clear, .black.opacity(0.6)],
                            startPoint: .top,
                            endPoint: .bottom)
                        Text("Header title")
                           .padding()
                    }
                }
                .frame(height: 250)
            }
            .navigationTitle("Test")
            .navigationBarTitleDisplayMode(.inline)
        }
        .accentColor(.white)
        .colorScheme(.dark)
    }
}
