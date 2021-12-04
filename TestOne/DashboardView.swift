//
//  DashboardView.swift
//  TestOne
//
//  Created by Stebin Alex on 04/12/21.
//

import SwiftUI

struct DashBoardListItem: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var description: String
    var isLast: Bool = false
}

struct DashboardView: View {
    
    @State private var listItems: [DashBoardListItem] = [.init(image: "antenna.radiowaves.left.and.right.circle.fill", title: "Creator mode: On", description: "Creator mode highlights content on your profile and helps you get discovered by potential followers."), .init(image: "person.2.fill", title: "My Network", description: "Manage your connections, events and interests."), .init(image: "banknote", title: "Salary insights", description: "Explore how your salary compares to your peers, and where your growth is headed"), .init(image: "tag.fill", title: "My items", description: "Keep track of your jobs, courses and articles", isLast: true)]
    
    var body: some View {
        
        VStack {
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Your Dashboard")
                    Text("Private to you")
                        .italic()
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                Spacer()
                Image(systemName: "star")
                Text("ALL-STAR")
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)
            .padding(.top)
            
            GeometryReader { proxy in
                HStack(spacing: 0) {
                    
                    itemView(number: "111", item: "Who viewed your profile", proxy: proxy)
                    
                    
                    Rectangle()
                        .foregroundColor(Color.gray)
                        .frame(width: 0.5, height: 70)
                    
                    
                    itemView(number: "500", item: "Post Views", proxy: proxy)
                    
                    
                    Rectangle()
                        .foregroundColor(Color.gray)
                        .frame(width: 0.5, height: 70)
                    
                    itemView(number: "85", item: "Search apperances", proxy: proxy)
                    
                }
            }
            .frame(maxWidth: .infinity)
            .frame(height: 70)
            .background(Color.white)
            .cornerRadius(15)
            .padding(.horizontal)
            
            VStack {
                ForEach($listItems) { item in
                    createCell(for: item.wrappedValue)
                }
            }
            .background(Color.white)
            .cornerRadius(15)
            .padding(.horizontal)
            .padding(.bottom)
            
        }
        .frame(maxWidth: .infinity)
        .background(
            Color.lightBlue
        )
    }
    
    func createCell(for item: DashBoardListItem) -> some View {
        VStack(alignment: .leading) {
        HStack(alignment: .top) {
            Image(systemName: item.image)
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.callout)
                    .padding(.bottom, 5)
                Text(item.description)
                    .font(.caption)
                    .lineLimit(3)
                    .foregroundColor(.gray)
                
            }
            Spacer()
        }
        .padding()
            if !item.isLast {
            Rectangle()
                .frame(height: 0.5)
                .frame(maxWidth: .infinity)
            }
        }
        
    }
    
    func itemView(number: String, item: String, proxy: GeometryProxy) -> some View {
        HStack {
            Spacer()
            VStack(alignment: .leading) {
                Text(number)
                    .foregroundColor(.blue)
                HStack {
                    Text(item)
                        .font(.caption)
                        .foregroundColor(.gray)
                        .lineLimit(2)
                    Spacer()
                }
                Spacer()
            }
            .frame(width: (proxy.size.width - 30) / 3, height: 60)
            .padding(.top, 7)
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
