//
//  WishlistsView.swift
//  SportsBuddy
//
//  Created by Dayan Abdulla on 7/27/24.
//

import SwiftUI

struct WishlistsView: View {
    var body: some View {
        NavigationStack {
            VStack (alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 4){
                    Text("Log in to view matches")
                        .font(.headline)
                    Text("You can create, view or edit matches once you've logged in")
                        .font(.footnote)
                }
                Button {
                    print("Log in")
                } label: {
                    Text("Log in")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.green)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Matches")
        }
    }
}

#Preview {
    WishlistsView()
}
