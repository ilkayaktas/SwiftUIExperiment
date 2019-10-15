//
//  LandmarkList.swift
//  SwiftUIExperiment
//
//  Created by İlkay Aktaş on 14.10.2019.
//  Copyright © 2019 İlkay Aktaş. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @State var showFavoritesOnly = true // when the State object is updated, the view is redrawn
    @EnvironmentObject var userData: UserData


    var body: some View {
            List {
                Toggle(isOn: $userData.showFavoritesOnly){ // use the $ prefix to access a binding to a state variable, or one of its properties.
                    Text("Favorites only")
                }
                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandscapeDetail(landmark: landmark)){
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LandmarkList()
                .environmentObject(UserData())
        }
    }
}
