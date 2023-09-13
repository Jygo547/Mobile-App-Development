//
//  ContentView.swift
//  Hello World Assignment
//
//  Created by Jyothish Gompa on 9/12/23.
//

import SwiftUI

struct ContentView: View {
    // Define @State properties for TextField and Toggle
    @State private var a: String = ""
    @State private var isToggled: Bool = false
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Capsule()
                    .foregroundColor(.red)
                    .frame(width: 200, height: 10)
                    .padding()
                Text("Type something below")
                    .foregroundColor(.blue)
                    .padding()
                    .font(.system(size: 35, weight: .bold))
                
                // Add a TextField that updates the textInput @State property
                TextField("Enter text", text: $a)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                // Add a Toggle that updates the isToggled @State property
                Toggle("Toggle", isOn: $isToggled)
                    .padding()
                
                AnotherView(a: $a, isToggled: $isToggled)
            }
            .padding()
        }
    }
}

struct AnotherView: View {
    // Define a Binding property to share isToggled between views
    @Binding var a: String
    @Binding var isToggled: Bool
    
    var body: some View {
        VStack {
            Text("A Different Binded View")
                .font(.system(size: 30, weight: .bold))
                .foregroundColor(.yellow)
                .padding()
            // Use the shared Binding property to update the UI
            Text("Toggle is \(isToggled ? "On" : "Off")")
                .padding()
            Text("Text Input: \(a)")
                .padding()
            Capsule()
                .foregroundColor(.red)
                .frame(width: 200, height: 10)
                .padding()
        }
        
    }
}

struct ConsistentPadding: ViewModifier {
    func body(content: Content) -> some View {
        content.padding(100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
