//
//  ExploreView.swift
//  SportsBuddy
//
//  Created by Dayan Abdulla on 7/12/24.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false
    
    var body: some View {
        NavigationStack {
            
            if showDestinationSearchView {
                DestinationSearchView(show: $showDestinationSearchView)
        
            } else {
                
                //remove this vstack if dont want the search bar to be sticky, and place the "SearchandfilterBar" within "Scroll View" down below//
                VStack {
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy){
                                showDestinationSearchView.toggle()
                            }
                        }
                    ScrollView {

                        LazyVStack(spacing: 3){
                            ForEach(0 ... 5, id: \.self) { listing in
                                NavigationLink(value: listing) {
                                    ListingItemView()
                                        .frame(height: 400)
                                        .clipShape(RoundedRectangle(cornerRadius: 12))
                                    
                                }
                                
                            }
                        }
                        .padding()
                    }
                    .navigationDestination(for: Int.self) { listing in
                        ListingDetailView()
                            .navigationBarBackButtonHidden()
                    }
                }
            }
            
            
            
           
            
        }
    }
}

#Preview {
    ExploreView()
}

