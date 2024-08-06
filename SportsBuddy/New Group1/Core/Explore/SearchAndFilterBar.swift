//
//  SearchAndFilterBar.swift
//  SportsBuddy
//
//  Created by Dayan Abdulla on 7/13/24.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")

            VStack(alignment: .leading, spacing: 2) {
                Text("Locate Match?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text ("Anywhere - Anytime - Anyone")
                    .font(.caption2)
                    .foregroundStyle(.gray)
                
            }
            Spacer()
            
            Button (action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.gray)
            })
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundColor(Color(.systemGreen))
                .shadow(color: .black.opacity(0.4), radius: 2)
        }
        .padding()
    }
}

#Preview {
    SearchAndFilterBar()
}
