//
//  HomeView.swift
//  KyawsUber
//
//  Created by Kyaw Thant Zin(George) on 9/19/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        //adding maps on the phone
        UberMapViewRepresentable()
            .ignoresSafeArea()
    }
}

#Preview {
    HomeView()
}
