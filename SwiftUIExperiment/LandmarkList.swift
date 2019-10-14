//
//  LandmarkList.swift
//  SwiftUIExperiment
//
//  Created by İlkay Aktaş on 14.10.2019.
//  Copyright © 2019 İlkay Aktaş. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmarkData) { landmark in
                NavigationLink(destination: LandscapeDetail(landmark: landmark)){
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
    }
}
