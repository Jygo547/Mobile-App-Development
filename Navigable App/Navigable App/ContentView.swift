
//  ContentView.swift
//  Navigable App

// Created by Jyothish Gompa on 9/12/23.


import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    @State private var isPresentingModal = false
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        NavigationView {
            
            VStack {
                
                HStack{
                    Text("Recently Played")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    //Modal Sheet
                    
                    Button("View Profile") {
                        isPresentingModal = true
                    }
                    .frame(alignment: .trailing)
                    
                }
                .frame(height: 50)
                .padding(.horizontal, 25)
                .padding(.top, 20)
                
                
                HStack {
                    
                    // Tab Bar
                    
                    NavigationLink(destination: Library()) {
                        Text("Game Library")
                    }
                    .padding(.vertical)
                    
                    Spacer().frame(width: 120)
                    
                    // Alert
                    
                    Button("View Match Reports") {
                        showAlert = true
                    }
                    .padding(.vertical)
                }
                .padding(.bottom)
                
                //Navigation Views
                
                HStack {
                    NavigationLink(destination: Starfield()) {
                        Image("Starfield")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .padding(.horizontal, 10)
                        VStack {
                            Text("Starfield")
                                .fontWeight(.bold)
                                .frame(width: 200, alignment: .leading)
                                .padding(.vertical, 2)
                            Text("Played 39m ago")
                                .frame(width: 200, alignment: .leading)
                                .padding(.vertical, 0.5)
                            Text("Playtime: 27 Hours")
                                .frame(width: 200, alignment: .leading)
                    }
                    }
                    .accentColor(accentColorForMode(colorScheme))
                }
                .frame(maxWidth: 350, alignment: .leading)
                .padding(.vertical, 20)
                .padding(.horizontal, 10)
                .border(Color(hex: "eeeeee"), width: 3)
                
                Spacer().frame(height: 30)
                
                HStack {
                    NavigationLink(destination: Valorant()) {
                        Image("Valorant")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .padding(.horizontal, 10)
                        VStack {
                            Text("Valorant")
                                .fontWeight(.bold)
                                .frame(width: 200, alignment: .leading)
                                .padding(.vertical, 2)
                            Text("Played 2h ago")
                                .frame(width: 200, alignment: .leading)
                                .padding(.vertical, 0.5)
                            Text("Playtime: 157 Hours")
                                .frame(width: 200, alignment: .leading)
                        }
                    }
                    .accentColor(accentColorForMode(colorScheme))
                }
                .frame(maxWidth: 350, alignment: .leading)
                .padding(.vertical, 20)
                .padding(.horizontal, 10)
                .border(Color(hex: "eeeeee"), width: 3)
                
                Spacer().frame(height: 30)
                
                HStack {
                    NavigationLink(destination: RocketLeague()) {
                        Image("Rocket League")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .padding(.horizontal, 10)
                        VStack {
                            Text("Rocket League")
                                .fontWeight(.bold)
                                .frame(width: 200, alignment: .leading)
                                .padding(.vertical, 2)
                            Text("Played 7h ago")
                                .frame(width: 200, alignment: .leading)
                                .padding(.vertical, 0.5)
                            Text("Playtime: 96 Hours")
                                .frame(width: 200, alignment: .leading)
                        }
                    }
                    .accentColor(accentColorForMode(colorScheme))
                }
                .frame(maxWidth: 350, alignment: .leading)
                .padding(.vertical, 20)
                .padding(.horizontal, 10)
                .border(Color(hex: "eeeeee"), width: 3)

            }
            .navigationTitle("Games")
            .padding(.top, -90)
            
            //Alert Declaration
            
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Error 317"),
                    message: Text("This feature is not yet available."),
                    dismissButton: .default(Text("Got it"))
                )
            }
            
            //Modal Sheet Declaration
            
            .sheet(isPresented: $isPresentingModal) {
                Profile(isPresented: $isPresentingModal)
            }
            
        }
        
    }
    func accentColorForMode(_ colorScheme: ColorScheme) -> Color {
            return colorScheme == .dark ? Color.white : Color.black
        }
}

//Game Library - Tab Bar

struct Library: View {
    var body: some View {
        TabView {
            VStack(alignment: .leading) {
                
                Text("Your Games")
                    .font(.title2)
                    .padding(.vertical)
                
                HStack {
                    Image("Rocket League")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .padding(.horizontal, 10)
                    VStack {
                        Text("Rocket League")
                            .fontWeight(.bold)
                            .frame(width: 200, alignment: .leading)
                            .padding(.vertical, 2)
                        Text("Played 7h ago")
                            .frame(width: 200, alignment: .leading)
                            .padding(.vertical, 0.5)
                        Text("Playtime: 96 Hours")
                            .frame(width: 200, alignment: .leading)
                    }
                }
                .frame(maxWidth: 350, alignment: .leading)
                .padding(.vertical, 20)
                .padding(.horizontal, 10)
                .border(Color(hex: "eeeeee"), width: 3)
                
                Spacer().frame(height: 30)
                
                HStack {
                    Image("Valorant")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .padding(.horizontal, 10)
                    VStack {
                        Text("Valorant")
                            .fontWeight(.bold)
                            .frame(width: 200, alignment: .leading)
                            .padding(.vertical, 2)
                        Text("Played 2h ago")
                            .frame(width: 200, alignment: .leading)
                            .padding(.vertical, 0.5)
                        Text("Playtime: 157 Hours")
                            .frame(width: 200, alignment: .leading)
                    }
                }
                .frame(maxWidth: 350, alignment: .leading)
                .padding(.vertical, 20)
                .padding(.horizontal, 10)
                .border(Color(hex: "eeeeee"), width: 3)
                
                Spacer().frame(height:30)
                
                HStack {
                    Image("Starfield")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .padding(.horizontal, 10)
                    VStack {
                        Text("Starfield")
                            .fontWeight(.bold)
                            .frame(width: 200, alignment: .leading)
                            .padding(.vertical, 2)
                        Text("Played 39m ago")
                            .frame(width: 200, alignment: .leading)
                            .padding(.vertical, 0.5)
                        Text("Playtime: 27 Hours")
                            .frame(width: 200, alignment: .leading)
                    }
                }
                .frame(maxWidth: 350, alignment: .leading)
                .padding(.vertical, 20)
                .padding(.horizontal, 10)
                .border(Color(hex: "eeeeee"), width: 3)
                
            }
            .frame(maxHeight: .infinity, alignment: .topLeading)
                .tabItem {
                    Label("Your Games", systemImage: "gamecontroller.fill")
                }
            
            VStack(alignment: .leading) {
                
                Text("Wishlist")
                    .font(.title2)
                    .padding(.vertical)
                
                HStack {
                    Image("Rust")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .padding(.horizontal, 10)
                    VStack {
                        Text("Rust")
                            .fontWeight(.bold)
                            .frame(width: 200, alignment: .leading)
                            .padding(.vertical, 2)
                        Text("Release Date:")
                            .fontWeight(.semibold)
                            .frame(width: 200, alignment: .leading)
                            .padding(.bottom, -5)
                        
                        Text("Feb 8, 2018")
                            .frame(width: 200, alignment: .leading)
                            .padding(.vertical, 0.5)
                        
                        HStack {
                                    Text("Cost:")
                                        
                                        .fontWeight(.semibold)
                                    Text("$39.99")
                                        
                                }
                            .frame(width: 200, alignment: .leading)
                    }
                }
                .frame(maxWidth: 350, alignment: .leading)
                .padding(.vertical, 20)
                .padding(.horizontal, 10)
                .border(Color(hex: "eeeeee"), width: 3)
                
                Spacer().frame(height:30)
                
                HStack {
                    
                    Image("Spider-Man 2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .padding(.horizontal, 10)
                    
                    VStack {
                        
                        Text("Spider-Man 2")
                            .fontWeight(.bold)
                            .frame(width: 200, alignment: .leading)
                            .padding(.vertical, 2)
                        
                        Text("Release Date:")
                            .fontWeight(.semibold)
                            .frame(width: 200, alignment: .leading)
                            .padding(.bottom, -5)
                        
                        Text("Oct 20, 2023")
                            .frame(width: 200, alignment: .leading)
                            .padding(.vertical, 0.5)
                        
                        HStack {
                                    Text("Cost:")
                                        
                                        .fontWeight(.semibold)
                                    Text("$69.99")
                                        
                                }
                            .frame(width: 200, alignment: .leading)
                    }
                }
                .frame(maxWidth: 350, alignment: .leading)
                .padding(.vertical, 20)
                .padding(.horizontal, 10)
                .border(Color(hex: "eeeeee"), width: 3)
                
                Spacer().frame(height:30)
                
                HStack {
                    Image("Hogwarts")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .padding(.horizontal, 10)
                    VStack {
                        Text("Hogwarts")
                            .fontWeight(.bold)
                            .frame(width: 200, alignment: .leading)
                            .padding(.vertical, 2)
                        Text("Release Date:")
                            .fontWeight(.semibold)
                            .frame(width: 200, alignment: .leading)
                            .padding(.bottom, -5)
                        
                        Text("Feb 10, 2023")
                            .frame(width: 200, alignment: .leading)
                            .padding(.vertical, 0.5)
                        
                        HStack {
                                    Text("Cost:")
                                        
                                        .fontWeight(.semibold)
                                    Text("$69.99")
                                        
                                }
                            .frame(width: 200, alignment: .leading)
                    }
                }
                .frame(maxWidth: 350, alignment: .leading)
                .padding(.vertical, 20)
                .padding(.horizontal, 10)
                .border(Color(hex: "eeeeee"), width: 3)
                
            }
            .frame(maxHeight: .infinity, alignment: .topLeading)
            
                .tabItem {
                    Label("Wishlist", systemImage: "heart")
                }
        }
        
        .navigationTitle("Game Library")
    }
}

//Description Pages - Nav Bar

struct Starfield: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("Starfield Cover")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 220)
                .padding()
            Text("Starfield")
                .font(.largeTitle)
                .padding(.horizontal)
                .padding(.top, -10)

            Text("Description:")
                .font(.headline)
                .padding(.leading)
                .padding(.vertical, -10)
                            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel libero ac tellus tincidunt hendrerit. Vivamus et urna eu dolor fringilla auctor. Duis vehicula, arcu id eleifend tincidunt, felis ante blandit risus, a tincidunt libero nisi non mi. Integer ullamcorper nunc ut semper.")
                .padding()
            
            HStack {
                        Text("Playtime:")
                        .fontWeight(.semibold)
                
                        Text("27 Hours")
                            
                    }
                    .frame(width: 200, alignment: .leading)
                    .padding(.horizontal)
            
            HStack {
                        Text("Cost:")
                        .fontWeight(.semibold)
                
                        Text("$69.99")
                    }
                    .frame(width: 200, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.vertical, 5)
            
            HStack {
                        Text("Release Date:")
                        .fontWeight(.semibold)
                
                        Text("September 6, 2023")
                    }
                    .frame(width: 300, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.vertical, 5)
        }
        .frame(maxHeight: .infinity, alignment: .topLeading)
            .navigationTitle("Starfield")
    }
}

struct Valorant: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("Valorant Cover")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 220)
                .padding()
            Text("Valorant")
                .font(.largeTitle)
                .padding(.horizontal)
                .padding(.top, -10)

            Text("Description:")
                .font(.headline)
                .padding(.leading)
                .padding(.vertical, -10)
                            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel libero ac tellus tincidunt hendrerit. Vivamus et urna eu dolor fringilla auctor. Duis vehicula, arcu id eleifend tincidunt, felis ante blandit risus, a tincidunt libero nisi non mi. Integer ullamcorper nunc ut semper.")
                .padding()
            
            HStack {
                        Text("Playtime:")
                        .fontWeight(.semibold)
                
                        Text("157 Hours")
                            
                    }
                    .frame(width: 200, alignment: .leading)
                    .padding(.horizontal)
            
            HStack {
                        Text("Cost:")
                        .fontWeight(.semibold)
                
                        Text("Free")
                    }
                    .frame(width: 200, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.vertical, 5)
            
            HStack {
                        Text("Release Date:")
                        .fontWeight(.semibold)
                
                        Text("June 2, 2020")
                    }
                    .frame(width: 300, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.vertical, 5)
        }
        .frame(maxHeight: .infinity, alignment: .topLeading)
            .navigationTitle("Valorant")
    }
}

struct RocketLeague: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("Rocket League Cover")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 220)
                .padding()
            Text("Rocket League")
                .font(.largeTitle)
                .padding(.horizontal)
                .padding(.top, -10)

            Text("Description:")
                .font(.headline)
                .padding(.leading)
                .padding(.vertical, -10)
                            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel libero ac tellus tincidunt hendrerit. Vivamus et urna eu dolor fringilla auctor. Duis vehicula, arcu id eleifend tincidunt, felis ante blandit risus, a tincidunt libero nisi non mi. Integer ullamcorper nunc ut semper.")
                .padding()
            
            HStack {
                        Text("Playtime:")
                        .fontWeight(.semibold)
                
                        Text("96 Hours")
                            
                    }
                    .frame(width: 200, alignment: .leading)
                    .padding(.horizontal)
            
            HStack {
                        Text("Cost:")
                        .fontWeight(.semibold)
                
                        Text("Free")
                    }
                    .frame(width: 200, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.vertical, 5)
            
            HStack {
                        Text("Release Date:")
                        .fontWeight(.semibold)
                
                        Text("July 7, 2015")
                    }
                    .frame(width: 300, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.vertical, 5)
        }
        .frame(maxHeight: .infinity, alignment: .topLeading)
            .navigationTitle("Rocket League")
    }
}

//Profile Page - Modal Sheet

struct Profile: View {
    @Binding var isPresented: Bool

    var body: some View {
        VStack(alignment: .center) {
            Text("User Profile")
                .font(.title)
                .fontWeight(.bold)
                .padding()

            HStack(alignment: .center) {
                Image("Photo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100, alignment: .leading)
                    .padding()

                VStack(alignment: .leading) {
                    Text("Username: JohnDoe")
                        .font(.headline)

                    Text("Email: john@example.com")
                        .font(.headline)
                        .padding(.vertical, 5)
                    
                    Text("Active since: June 4th, 2014")
                        .font(.headline)
                        .padding(.vertical, 5)
                }
            }
            
            Text("Statistics")
                .font(.title2)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 50)
            
            ScrollView {
                VStack(alignment: .leading) {
                    
                    // Game 1 Stats
                    
                    Text("Valorant")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 30)
                        .padding(.vertical, 5)
                    
                    Text("Kills: 500")
                        .font(.body)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 30)
                        .padding(.vertical, 2)

                    Text("Deaths: 250")
                        .font(.body)
                        
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 30)
                        .padding(.vertical, 2)

                    Text("Assists: 100")
                        .font(.body)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 30)
                        .padding(.vertical, 2)
                    

                    Text("Win Rate: 65%")
                        .font(.body)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 30)
                        .padding(.vertical, 2)

                    Text("Ranked Tier: Gold")
                        .font(.body)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 30)
                        .padding(.vertical, 2)

                    Text("Favorite Agent: Phoenix")
                        .font(.body)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 30)
                        .padding(.vertical, 2)
                    
//Unable to add the below stats due to an some error: "Extra arguments at positions #11, #12, #13, #14, #15 in call"
                    
//                    Text("Rocket League:")
//                        .font(.title3)
//                        .fontWeight(.semibold)
//                        .frame(maxWidth: .infinity, alignment: .leading)
//                        .padding(.horizontal, 30)
//                        .padding(.vertical, 5)
//
//                    Text("Goals: 200")
//                        .font(.body)
//                        .frame(maxWidth: .infinity, alignment: .leading)
//                        .padding(.horizontal, 30)
//                        .padding(.vertical, 2)
//
//                    Text("Assists: 75")
//                        .font(.body)
//                        .frame(maxWidth: .infinity, alignment: .leading)
//                        .padding(.horizontal, 30)
//                        .padding(.vertical, 2)
//
//                    Text("Saves: 50")
//                        .font(.body)
//                        .frame(maxWidth: .infinity, alignment: .leading)
//                        .padding(.horizontal, 30)
//                        .padding(.vertical, 2)
//
//                    Text("Shots: 400")
//                        .font(.body)
//                        .frame(maxWidth: .infinity, alignment: .leading)
//                        .padding(.horizontal, 30)
//                        .padding(.vertical, 2)
//
//                    Text("MVPs: 15")
//                        .font(.body)
//                        .frame(maxWidth: .infinity, alignment: .leading)
//                        .padding(.horizontal, 30)
//                        .padding(.vertical, 2)
//
//                    Text("Rank: Platinum")
//                        .font(.body)
//                        .frame(maxWidth: .infinity, alignment: .leading)
//                        .padding(.horizontal, 30)
//                        .padding(.vertical, 2)
//
//                    Text("Favorite Car: Octane")
//                        .font(.body)
//                        .frame(maxWidth: .infinity, alignment: .leading)
//                        .padding(.horizontal, 30)
//                        .padding(.vertical, 2)

                }
                .padding()
            }

            Button(action: {isPresented = false}) {
                Text("Close")
                    .font(.headline)
                    .padding()
                        }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//Code for Navigation Links depending on Color Scheme

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let red = Double((rgb & 0xFF0000) >> 16) / 255.0
        let green = Double((rgb & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgb & 0x0000FF) / 255.0
        
        self.init(red: red, green: green, blue: blue)
    }
}
