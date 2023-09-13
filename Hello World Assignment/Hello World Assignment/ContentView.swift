//
//  ContentView.swift
//  Hello World Assignment
//
//  Created by Jyothish Gompa on 9/12/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            VStack {
                Capsule()
                    .foregroundColor(.red)
                    .frame(width: 200, height: 10)
                    .padding()
                Text("Hi! Welcome to my UI preview.")
                    .foregroundColor(.blue)
                    .padding()
                    .font(.system(size: 35, weight: .bold))
                Text("- Jyothish Gompa")
                    .foregroundColor(.white)
                    .font(.system(size: 25, weight: .bold))
                Capsule()
                    .foregroundColor(.red)
                    .frame(width: 200, height: 10)
                    .padding()
                    .padding()
                     }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
