//
//  UserData.swift
//  SwiftUIExperiment
//
//  Created by İlkay Aktaş on 15.10.2019.
//  Copyright © 2019 İlkay Aktaş. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject  {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
