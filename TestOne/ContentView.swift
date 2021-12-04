//
//  ContentView.swift
//  TestOne
//
//  Created by Stebin Alex on 04/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
            TopView()
                ProfileView()
                    .padding(.bottom, 10)
            Rectangle()
                .foregroundColor(Color.lightGray)
            DashboardView()
            Rectangle()
                .foregroundColor(Color.lightGray)
            }
            //Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
