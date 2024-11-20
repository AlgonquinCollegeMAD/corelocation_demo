//
//  ContentView.swift
//  CoreLocation_Demo
//
//  Created by Vladimir Cezar on 2024.11.12.
//

import SwiftUI

struct ContentView: View {
  @StateObject private var locationService = LocationService()
  
  var body: some View {
    VStack {
      if let location = locationService.location {
        Text("Latitude: \(location.coordinate.latitude, specifier: "%.6f")")
        Text("Longitude: \(location.coordinate.longitude, specifier: "%.6f")")
      } else {
        Text("Locating...")
      }
    }
    .padding()
  }
}

#Preview {
  ContentView()
}
