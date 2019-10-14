//
//  MainView.swift
//  SwiftUIExperiment
//
//  Created by İlkay Aktaş on 14.10.2019.
//  Copyright © 2019 İlkay Aktaş. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
            image
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(color: Color.blue, radius: 20)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
