//
//  ContentView.swift
//  otus_hw_1
//
//  Created by Aleksey Nikolaenko on 14.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    enum Tabs {
        case first
        case stories
        case third
    }
    
    @State var selectedTab: Tabs = .first
    @State var selectedStory: Story? = nil
    
    @State var storiesPath = NavigationPath()
    
    var body: some View {
        TabView(selection: $selectedTab) {
            firstView
                .tag(Tabs.first)
                .tabItem {
                    Text("First")
                }
            StoriesView(stories: stories, navigationPath: $storiesPath)
                .tag(Tabs.stories)
                .tabItem {
                    Text("Stories")
                }
            thirdView
                .tag(Tabs.third)
                .tabItem {
                    Text("Third")
                }
        }
    }
    
    var firstView: some View {
        VStack {
            UIKitButton(title: "To First Story") {
                selectedTab = .stories
                Timer.scheduledTimer(withTimeInterval: 0.3, repeats: false) { _ in
                    storiesPath.append(stories[1])
                }
            }.frame(width: 250, height: 50)
        }
    }
    
    @State var isAlertPresented = false
    
    var thirdView: some View {
        
        VStack {
            Button {
                isAlertPresented.toggle()
            } label: {
                Text("Show Alert")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.horizontal, 64)
                    .padding(.vertical, 10)
                    .background(Color(.brown))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .buttonStyle(PlainButtonStyle())
        }.alert(Text("Warning"), isPresented: $isAlertPresented) {
            Button("ОК") {
                isAlertPresented.toggle()
            }
        } message: {
            Text("This is alert with some text")
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
