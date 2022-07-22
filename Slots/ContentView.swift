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
                Image("fruit\(slotTwo)")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 120)
            }
            Spacer()
            Button {
                //
                
                
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
