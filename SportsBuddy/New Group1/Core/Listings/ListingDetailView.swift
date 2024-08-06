//
//  ListingDetailView.swift
//  SportsBuddy
//
//  Created by Dayan Abdulla on 7/15/24.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
//    var images = [
//        "listing-2",
//        "listing-1",
//        "listing-3",
//
//    ]
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView {
            ZStack (alignment:.topLeading){
                ListingImageCarouselView()
                    .frame(height:320)
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background {
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(32)
                }
                
            }
            VStack(alignment: .leading, spacing: 8) {
                Text("Baseball Game")
                    .font(.title)
                    .fontWeight(.bold)
                
                VStack(alignment: .leading){
                    HStack(spacing:5) {
                        Image(systemName: "person.fill.checkmark.rtl")
                            .underline()
                            .fontWeight(.semibold)
                            .font(.headline)

                       // Text("  - ")
                            .fontWeight(.semibold)
                        Text("10 players joined ")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    
                    .foregroundColor(.black)
                    Spacer()
                        .frame(height: 8)
                    Text ("Ford Field | Dearborn, MI")
                    
                }
                .font(.subheadline)
            }
            .padding(.leading)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            
            Divider()
            
            //host info view
            HStack{
                VStack(alignment: .leading, spacing: 4) {
                    
                    Text("Match hosted by Dayan Abdulla")
                        .font(.headline)
                        .frame(width: 250,alignment: .leading)
                    
                    HStack (spacing: 2) {
                        Text ("June 22, 3:30 PM | ")

                        Text ("2 Teams |")
                        Text ("18 Players")

                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                
                Spacer()
                
                Image("User-Dayan")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
            }
            .padding()
            
            Divider()
            
            // Match listing features
            
            VStack (alignment: .leading, spacing: 16){
                ForEach(0 ..< 2){ feature in
                    HStack(spacing: 12) {
                        Image(systemName: "medal")
                        
                        VStack(alignment: .leading) {
                            Text("Friendly Match")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            
                        }
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            //players view
            VStack(alignment: .leading, spacing: 16){
                Text("Current Player's")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 16) {
                        ForEach(1 ..< 5) { player in
                            VStack {
                                Image(systemName: "person.circle.fill")
                                Text("Player \(player) ")
                            }
                            .frame(width: 132, height: 100)
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                                
                                    }
                                }
                            }
                        }
                        .scrollTargetBehavior(.paging )
                    }
            .padding()
            
            
            //Match Amenities view  //might delete later
            VStack(alignment: .leading, spacing: 16 ){
                Text("This Match Offers")
                
                ForEach(0 ..< 3){ feature in
                    HStack{
                        Image(systemName: "waterbottle.fill")
                            .frame(width: 32)
                        Text("Water")
                            .font(.footnote)
                        
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            //map view
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Match Location")
                    .font(.headline)
                
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
        }
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()  //top image safe area
        .padding(.bottom, 64)   //map padding
        
        // bottom Join overlay
        .overlay(alignment:.bottom){
            VStack {
                Divider()
                    .padding(.bottom)
                HStack{
                    Image(systemName: "person.fill")
                    VStack(alignment: .leading) {
                       
                        Text("18 Players")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        Text("June 22, 3:30 PM")
                            .font(.subheadline)
                            .underline()
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)

                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Join")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.green)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
                .padding(.horizontal,32)
            }
            .background(.white)
        }
        
        
    }
}

#Preview {
    ListingDetailView()
}
