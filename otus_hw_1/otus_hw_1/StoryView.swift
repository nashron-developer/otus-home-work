//
//  StoryView.swift
//  otus_hw_1
//
//  Created by Aleksey Nikolaenko on 14.12.2022.
//

import SwiftUI

struct StoryView: View {
    
    @State var story: Story
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                HStack {
                    Text(story.title)
                        .font(.largeTitle)
                    Spacer()
                }
                Spacer().frame(height: 20)
                Text(story.text)
                Spacer()
            }
            .padding(20)
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(story: stories[0])
    }
}
