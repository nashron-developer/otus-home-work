//
//  StoriesView.swift
//  otus_hw_1
//
//  Created by Aleksey Nikolaenko on 14.12.2022.
//

import SwiftUI

struct StoriesView: View {
    
    @State var stories: [Story]
    
    @Binding var navigationPath: NavigationPath
    
    var body: some View {
        NavigationStack(path: $navigationPath) {
            List(stories) { story in
                NavigationLink(story.title, value: story)
                    .navigationDestination(for: Story.self) { story in
                        StoryView(story: story)
                    }
            }
            .navigationTitle("Stories")
        }
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView(stories: stories, navigationPath: .constant(NavigationPath([stories[1]])))
    }
}
