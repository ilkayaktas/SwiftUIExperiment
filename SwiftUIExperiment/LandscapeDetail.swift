//
//  ContentView.swift
//  SwiftUIExperiment
//
//  Created by İlkay Aktaş on 14.10.2019.
//  Copyright © 2019 İlkay Aktaş. All rights reserved.
//

import SwiftUI

struct LandscapeDetail: View {
    var landmark: Landmark
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate).frame(height: 300).edgesIgnoringSafeArea(.top)
            CircleImage(image: landmark.image)
            .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading){
                Text(landmark.name)
                    .font(.title)
                HStack(alignment: .top){
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state).font(.subheadline)
                }
            }
            .padding(10)
            Spacer()
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandscapeDetail(landmark: landmarkData[0])
    }
}
