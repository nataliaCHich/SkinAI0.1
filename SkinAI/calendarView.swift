//
//  calendarView.swift
//  SkinAI
//
//  Created by Chicherova Natalia2 on 15/12/24.
//
// Imports remain the same
import SwiftUI
struct calendarView: View {
    @State private var showMainScreen = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                // TabView content remains the same
                TabView {
                    // First Tab - Timeline
                    ZStack {
                        // Gradient remains the same
                        LinearGradient(gradient: Gradient(colors: [
                            Color.blue.opacity(0.3),
                            Color.pink.opacity(0.0)
                        ]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        .ignoresSafeArea()
                        
                        Text("Timeline View")
                    }
                    .tabItem {
                        Image(systemName: "clock.fill")
                        Text("Time")
                    }
                    
                    // Second Tab - Camera
                    ZStack {
                        // Gradient remains the same
                        LinearGradient(gradient: Gradient(colors: [
                            Color.blue.opacity(0.3),
                            Color.pink.opacity(0.0)
                        ]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        .ignoresSafeArea()
                        
                        // Add your camera content here
                        Text("Camera View")
                    }
                    .tabItem {
                        Image(systemName: "camera.fill")
                        Text("Camera")
                    }
                    
                    // Third Tab - Calendar
                    ZStack {
                        // Gradient remains the same
                        LinearGradient(gradient: Gradient(colors: [
                            Color.blue.opacity(0.3),
                            Color.pink.opacity(0.0)
                        ]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        .ignoresSafeArea()
                        
                        // Add your calendar content here
                        Text("Calendar View")
                    }
                    .tabItem {
                        Image(systemName: "calendar")
                        Text("Calendar")
                    }
                }
                .accentColor(.blue)
                
                // Profile picture overlay (will be visible on all tabs)
                VStack {
                    HStack {
                        // Modified home button with modern navigation
                        Button {
                            showMainScreen = true
                        } label: {
                            Image(systemName: "house.fill")
                                .resizable()
                                .frame(width: 43, height: 40)
                                .foregroundColor(.blue.opacity(1))
                                .padding(.leading, 20)
                        }
                        
                        Spacer()
                        
                        // Drop button remains the same
                        Button(action: {
                            // Add your profile button action here
                        }) {
                            Image("drop")
                                .resizable()
                                .frame(width: 200, height: 200)
                                .foregroundColor(.blue)
                                .padding(.trailing, -50)
                        }
                    }
                    .padding(.top, -40)
                    
                    Spacer()
                }
            }
            .navigationDestination(isPresented: $showMainScreen) {
                mainScreenView()
            }
        }
    }
}
// Preview remains the same
struct calendarView_Previews: PreviewProvider {
    static var previews: some View {
        calendarView()
    }
}
