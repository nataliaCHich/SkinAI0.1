//
//  calendarView.swift
//  SkinAI
//
//  Created by Chicherova Natalia2 on 15/12/24.
//
// Imports remain the same
import SwiftUI
struct cameraView: View {
    @State private var showMainScreen = false
    
    var body: some View {
        NavigationStack {
            ZStack {
          
                
                // Profile picture overlay (will be visible on all tabs)
                VStack {
                    
                }
            }
            .navigationDestination(isPresented: $showMainScreen) {
                mainScreenView()
            }
        }
    }
}
// Preview remains the same
struct cameraView_Previews: PreviewProvider {
    static var previews: some View {
        cameraView()
    }
}
