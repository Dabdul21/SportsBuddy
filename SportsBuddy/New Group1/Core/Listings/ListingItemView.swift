//
//  ListingView.swift
//  SportsBuddy
//
//  Created by Dayan Abdulla on 7/13/24.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
        "listing-2",
        "listing-1",
        "listing-3",

    ]
    
    
    
    
    var body: some View {
        VStack(spacing:8) {
            //images
            ListingImageCarouselView()
                .frame(height:320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            
            // listing details
            
            HStack (alignment:.center){
                // username
                
                    
                VStack(alignment: .trailing) {
                    Text("DABDULLA")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.black)
                }
                
                Spacer()
                HStack(spacing: 4) {
                    Image(systemName: "star.fill")
                    Text ("4.6") }
                .foregroundColor(Color(.systemGreen))

                Spacer()

                // Time n location
                
                VStack(alignment: .trailing) {
                    Text("3:30 PM")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.black)


                    Text("Dearborn MI")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)

                    
                    Text("18 Players")
                        .fontWeight(.semibold)
                        .foregroundStyle(.gray)

                }
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
