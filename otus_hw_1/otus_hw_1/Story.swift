//
//  Story.swift
//  otus_hw_1
//
//  Created by Aleksey Nikolaenko on 14.12.2022.
//

import Foundation

struct Story: Codable, Identifiable, Hashable {
    var id: String = UUID().uuidString
    let title: String
    let text: String
}

let stories: [Story] = {
    [
    Story(
        title: "Goldilocks and the Three Bears",
        text: """
Once upon a time there were three bears, who lived together in a house of their own in a wood. One of them was a little, small wee bear; one was a middle-sized bear, and the other was a great, huge bear.

One day, after they had made porridge for their breakfast, they walked out into the wood while the porridge was cooling. And while they were walking, a little girl came into the house. This little girl had golden curls that tumbled down her back to her waist, and everyone called her by Goldilocks.

Goldilocks went inside. First she tasted the porridge of the great, huge bear, and that was far too hot for her. And then she tasted the porridge of the middle bear, and that was too cold for her. And then she went to the porridge of the little, small wee bear, and tasted that. And that was neither too hot nor too cold, but just right; and she liked it so well, that she ate it all up.
"""
    ),
    Story(title: "The Gingerbread Man", text: """
Once upon a time there was an old man, an old woman, and a little boy. One morning the old woman made some gingerbread in the shape of a man. She added icing for his hair and clothes, and little blobs of dough for his nose and eyes. When she put him in the oven to bake, she said to the little boy, "You watch the gingerbread man while your grandfather and I go out to work in the garden."

So the old man and the old woman went out and began to dig potatoes, and left the little boy to tend the oven. But he started to day dream, and didn’t watch it all of the time. All of a sudden he heard a noise, and he looked up and the oven door popped open, and out of the oven jumped a gingerbread man, and went rolling along end over end towards the open door of the house. The little boy ran to shut the door, but the gingerbread man was too quick for him and rolled through the door, down the steps, and out into the road long before the little boy could catch him.
"""),
    Story(title: "Androcles and the Lion", text: """
It happened in ancient times that a slave named Androcles escaped from his master and fled into the forest, and he wandered there for a long time until he was weary.

Just then he heard a lion near him moaning and groaning and at times roaring terribly.  And when  he tried to get up, there he saw the lion coming towards him.

Instead of attacking him it kept on moaning and groaning and looking at Androcles, who saw that the lion was holding out his right paw, which was covered with blood and very much swollen. Looking more closely at it, Androcles saw a great big thorn pressed into the paw, which was the cause of all the lion’s trouble.
"""),
    ]
}()

