//
//  TopView.swift
//  TestOne
//
//  Created by Stebin Alex on 04/12/21.
//

import SwiftUI

struct TopView: View {
    
    @State var searchText: String = "Stebin Alex"
    
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "arrow.left")
                    .foregroundColor(.black)
                    .font(.title)
                    .padding(.all, 10)
            }
            VStack(spacing: 5) {
                
                HStack(spacing: 2) {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .foregroundColor(.black)
                        .font(.largeTitle)
                        .frame(width: 20, height: 20)
                    TextField("Search here", text: $searchText)
                    Spacer()
                }
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.black)
                    
            }.frame(minWidth: 0, maxWidth: .infinity)
            
            
            Button {
                
            } label: {
                Image(systemName: "gearshape.fill")
                    .foregroundColor(.black)
                    .font(.title)
                    .padding(.all, 10)
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50)
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
