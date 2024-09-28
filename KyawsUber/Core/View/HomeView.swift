//
//  HomeView.swift
//  KyawsUber
//
//  Created by Kyaw Thant Zin(George) on 9/19/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        UberMapViewRepresentable()
            .ignoresSafeArea()
    }
}

#Preview {
    HomeView()
}
