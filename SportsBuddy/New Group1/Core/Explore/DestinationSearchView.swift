//
//  DestinationSearchView.swift
//  SportsBuddy
//
//  Created by Dayan Abdulla on 7/19/24.
//

import SwiftUI

enum DestinationSearchOptions {
    
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    //binds to the parent view in explore called @state, binds to showdestinationsearchview
    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectedOption: DestinationSearchOptions = .location
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numGuests = 0
    
    
    var body: some View {
        VStack {
            //X button and animation
            HStack {
                Button {
                    withAnimation(.snappy){
                        show.toggle()
                    }
                } label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }
                
                Spacer()
                
            //CLEAR text button
                if !destination.isEmpty {
                    Button("Clear"){
                        destination = ""
                    }
                    .foregroundColor(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            }
            .padding()
            
            //WHERE too view
            
            VStack(alignment: .leading) {
                if selectedOption == .location{
                    
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Locate matches", text: $destination)
                            .font(.subheadline)
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(Color(.systemGray4))
                    }
                    
                } else {
                    CollapsedPickerView(title: "Where", description: "Add Location")
                    
                }
                
                
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOption == .location ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {selectedOption = .location }
            }
            
            
            //DATE Select view
            
            VStack (alignment: .leading) {
                if selectedOption == .dates {
                    Text("When's your match?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    VStack {
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                        
                        Divider()
                        
                        DatePicker("To", selection: $endDate, displayedComponents: .date)

                    }
                    .foregroundColor(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    
                } else {
                    CollapsedPickerView(title: "When", description: "Add Dates")

                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOption == .dates ? 180 : 64)
            .onTapGesture {
                withAnimation(.snappy) {selectedOption = .dates }
            }
            
            //WHO select view
            
            VStack(alignment: .leading){
                if selectedOption == .guests {
                        Text("Who's playing")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    //Player + and -
                    Stepper {
                       Text("\(numGuests) Players")
                    }onIncrement: {
                        numGuests += 1
                    }onDecrement: {
                        guard numGuests > 0 else {return}
                        numGuests -= 1
                    }
                    
                } else {
                    CollapsedPickerView(title: "Who", description: "Add Players")

                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOption == .guests ? 120 : 64)
            .onTapGesture {
                    withAnimation(.snappy) {selectedOption = .guests }
            }
            Spacer()
        }
    }
}


#Preview {
    DestinationSearchView(show: .constant(false))
}

//custum modifier to help clean code
struct CollapsibleDestinationViewModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding()
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

struct CollapsedPickerView: View {
    let title: String
    let description: String
    
    
    var body: some View {
        VStack {
            HStack{
                Text(title)
                    .foregroundStyle(.gray)
                Spacer()
                
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
            
        }

    }
}
