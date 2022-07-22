//
//  ContentView.swift
//  Slots
//
//  Created by Peter Sekesan on 7/21/22.
//

import SwiftUI

struct ContentView: View {
    //set state variables
    @State var  slotOne = 1
    @State var  slotTwo = 2
    @State var  slotThree = 3
    @State var credits = 1000
    
    var body: some View {
        VStack {
                Text("SwiftUI Slots!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.top, 20.0)
            Spacer()
            Text("Credits:" + String(credits))
                .font(/*@START_MENU_TOKEN@*/.subheadline/*@END_MENU_TOKEN@*/)
            Spacer()
            HStack{
                Image("fruit\(slotOne)")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 120)
                Image("fruit\(slotTwo)")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 120)
                Image("fruit\(slotThree)")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 120)
            }
            Spacer()
            Button {
                // randomize the numbers on spin
                slotOne = Int.random(in: 1...3)
                slotTwo = Int.random(in: 1...3)
                slotThree = Int.random(in: 1...3)
                
                //set randomized number to image
                
                if slotOne == slotTwo && slotTwo == slotThree{
                    credits += 15
                } else { credits -= 5}
                
            } label: {
                Text("Spin")
                
                    }
            .padding()
            .frame(width:120,height: 40)
            .background(Color.red)
            .foregroundColor(Color.white)
            .cornerRadius(90)
            Spacer()

                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
