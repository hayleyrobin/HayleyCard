//
//  ContentView.swift
//  HayleyCard
//
//  Created by Hayley Robinson on 1/24/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.45, green: 0.73, blue: 1.00)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("hayley").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150).clipShape(Circle())
                    .overlay(Circle().stroke(Color.white,  lineWidth: 5))
                
                Text("Hayley Robinson")               .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                .padding()
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                
                InfoView(text: "+1 123 456 789", imageName: "phone.fill" )
                InfoView(text: "hayleyrobinson515@gmail.com", imageName: "envelope.fill")

            }

        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

