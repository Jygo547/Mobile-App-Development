//
//  ContentView.swift
//  Hello World Assignment
//
//  Created by Jyothish Gompa on 9/12/23.
//

import SwiftUI

struct ContentView: View {
    // Defining @State properties for TextField and Toggle
    @State private var textInput: String = ""
    @State private var isToggled: Bool = false

    var body: some View {
            VStack {
                Text("Enter your Input:")
                    .foregroundColor(.blue)
                    .padding()
                    .font(.system(size: 35, weight: .bold))
                
                TextField("Enter text", text: $textInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Toggle("Toggle", isOn: $isToggled)
                    .padding()
                
                Capsule()
                    .foregroundColor(.white)
                    .frame(height: 5)
                    .padding(.vertical, 30)
                
                AnotherView(textInput: $textInput, isToggled: $isToggled)
            }
            .padding()
        }
}

struct AnotherView: View {
    //Defining @Binding properties for the TextField and Toggle
    @Binding var textInput: String
    @Binding var isToggled: Bool
    
    var body: some View {
        VStack {
            Text("View the Input below:")
                .font(.system(size: 30, weight: .bold))
                .foregroundColor(.blue)
                .padding()
            // Use the shared Binding property to update the UI
            Text("Text Input is '\(textInput)'")
                .padding()
            
            Text("Toggle is \(isToggled ? "On" : "Off")")
                .padding()
            
        }
        
    }
}

struct ConsistentPadding: ViewModifier {
    func body(content: Content) -> some View {
        content.padding(.vertical, 100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
