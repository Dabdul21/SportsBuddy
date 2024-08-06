//
//  ListingImageCarouselView.swift
//  SportsBuddy
//
//  Created by Dayan Abdulla on 7/15/24.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var images = [
        "listing-2",
        "listing-1",
        "listing-3",

    ]
    var body: some View {
        TabView {
            ForEach(images, id: \.self) {image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView()
}
