//
//  ContentView.swift
//  Navigable App
//
//  Created by Jyothish Gompa on 9/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    @State private var isPresentingModal = false

    var body: some View {
        NavigationView {
            VStack {
                HStack{
                    Text("Recently Played")
                        .font(.title2)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                        .padding(.vertical)
                        
                }
                
                HStack {
                    Image("Starfield")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .padding(.horizontal, 10)
                    VStack {
                        Text("Starfield")
                            .padding(.vertical, 2)
                        Text("Played 39m ago")
                            .padding(.vertical, 2)
                        Text("Total Time: 27 Hours")
                            .padding(.vertical, 2)
                    }
                    .frame(alignment: .leading)
                    
                }
                Spacer()

                // 1. Tab Bar Navigation
                NavigationLink(destination: TabbedView()) {
                    Text("Go to Tabbed View")
                }
                .padding()

                // 2. Navigation Bar Navigation
                NavigationLink(destination: DetailView()) {
                    Text("Go to Detail View")
                }
                .padding()

                // 3. Alert
                Button("Show Alert") {
                    showAlert = true
                }
                .padding()

                // 4. Modal Sheet
                Button("Show Modal Sheet") {
                    isPresentingModal = true
                }
                .padding()
            }
            .navigationTitle("Games")
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Alert Title"),
                    message: Text("This is an example alert message."),
                    dismissButton: .default(Text("OK"))
                )
            }
            .sheet(isPresented: $isPresentingModal) {
                ModalView(isPresented: $isPresentingModal)
            }
        }
    }
}

struct TabbedView: View {
    var body: some View {
        TabView {
            Text("Tab 1")
                .tabItem {
                    Label("Tab 1", systemImage: "clock")
                }
            Text("Tab 2")
                .tabItem {
                    Label("Tab 2", systemImage: "2.circle")
                }
        }
        .navigationTitle("Portal")
    }
}

struct DetailView: View {
    var body: some View {
        Text("Detail View")
            .navigationTitle("Detail")
    }
}

struct ModalView: View {
    @Binding var isPresented: Bool

    var body: some View {
        VStack {
            Text("This is a Modal Sheet")
                .font(.title)
                .padding()
            Button("Dismiss") {
                isPresented = false
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
