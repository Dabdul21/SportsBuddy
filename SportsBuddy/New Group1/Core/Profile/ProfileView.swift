//
//  ProfileView.swift
//  SportsBuddy
//
//  Created by Dayan Abdulla on 7/27/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            //profile login view
            VStack (alignment: .leading, spacing: 32) {
                
                VStack (alignment: .leading, spacing: 32){
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Text("Log in to start planning your next match")
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
                
                HStack {
                    Text("Dont have an account?")
                    
                    Text ("Sign up")
                        .fontWeight(.semibold)
                        .underline()
                }
                .font(.caption)
            }
            
            //profile options
            VStack (spacing:24) {
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "gear", title: "Accessibility")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the Help Center")

            }
            .padding(.vertical)
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
