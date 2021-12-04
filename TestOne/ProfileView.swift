//
//  ProfileView.swift
//  TestOne
//
//  Created by Stebin Alex on 04/12/21.
//

import SwiftUI

struct Item: Identifiable {
    var id = UUID()
    var name: String
    var details: String
}

struct ProfileView: View {
    
    @State private var items: [Item] = [.init(name: "Open to work", details: "iOS Developer roles"), .init(name: "Providing Services", details: "iOS Development and Mobile Application Development")]
    
    var body: some View {
        VStack {
            
            ZStack {
                GeometryReader { proxy in
                    Image("cover")
                        .resizable()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100, maxHeight: 100)
                    
                    Button {} label: {
                        Image(systemName: "pencil")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .font(.title)
                            .background(
                                Circle()
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 30)
                            )
                    }
                    .offset(x: proxy.size.width - 35, y: 25)
                    
                }
            }
            Spacer(minLength: 50)
            makeBottomView()
                .padding(.horizontal)
        }
    }
    
    func makeBottomView() -> some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                ZStack{
                    Image("56")
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: 100, height: 100)
                        .overlay(Circle().stroke(Color.white,lineWidth:2))
                    Button {} label: {
                        Image(systemName: "plus")
                            .foregroundColor(.black)
                            .background(
                                Circle()
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 30)
                                    .overlay(Circle().stroke(Color.gray,lineWidth: 0.5))
                            )
                    }
                    .offset(x: 30, y: 30)
                }
                Spacer()
                Button {} label: {
                    Image(systemName: "pencil")
                        .font(.title)
                        .foregroundColor(.black)
                }
                .offset(y: 20)
                
            }
            VStack(alignment: .leading) {
                HStack {
                    Text("Stebin Alex")
                        .font(.title2)
                    Image(systemName: "speaker.wave.2.fill")
                }
                Text("Freelance iOS Developer | UIKit | SwiftUI |")
                    .font(.subheadline)
                Text("Talks about #swift, #swiftui, and #iosdevelopment")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            VStack(alignment: .leading) {
                Text("LEAN TRANSITION SOLUTIONS - LTS")
                    .font(.subheadline)
                Text("Thiruvananthapuram, Kerala, India")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            HStack {
                Text("4,413 followers")
                    .font(.subheadline)
                    .foregroundColor(.blue)
                Circle()
                    .frame(width: 2, height: 2)
                Text("500+ connections")
                    .font(.subheadline)
                    .foregroundColor(.blue)
            }
            
            
            makeButtonView()
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                ForEach(items) { item in
                    makeCell(for: item)
                }
                }
            }
            .frame(height: 100)
            
        }
        
    }
    
    func makeCell(for item: Item) -> some View {
        VStack(alignment: .leading,spacing: 5) {
            HStack {
                Text(item.name)
                    .font(.subheadline)
                Spacer()
                Button {} label: {
                    Image(systemName: "pencil")
                        .resizable()
                        .frame(width: 15, height: 15)
                        .font(.title)
                        .foregroundColor(.black)
                    
                }
            }
            Text(item.details)
                .font(.caption)
            Text("See all details")
                .font(.caption)
                .foregroundColor(.blue)
        }
        .frame(idealWidth: 300, maxHeight: .infinity)
        .padding()
        .background(Color.lightGray)
        .cornerRadius(15)
    }
    
    func makeButtonView() -> some View {
        HStack {
            Button{} label: {
                ZStack {
                    Capsule()
                    Text("Open to")
                        .foregroundColor(.white)
                }
            }
            
            Button {} label: {
                ZStack {
                    Capsule()
                        .foregroundColor(.white)
                        .overlay(Capsule().stroke(Color.gray,lineWidth: 1.0))
                    Text("Add section")
                        .foregroundColor(.gray)
                }
            }
            
            Button {} label: {
                ZStack {
                    Capsule()
                        .foregroundColor(.white)
                        .overlay(Circle().stroke(Color.gray,lineWidth: 1.0))
                    Image(systemName: "ellipsis")
                        .foregroundColor(.gray)
                }
            }
            .frame(width: 30)
        }
        .frame(height: 30)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
