//
//  ContentView.swift
//  Color Picker
//
//  Created by Jake Smolowe on 12/8/23.
//

import SwiftUI

struct ContentView: View {
  // Set initial slider color values
  @State private var redValue = 70.0
  @State private var greenValue = 200.0
  @State private var blueValue = 255.0
  // Set initial fill color for shape
  @State private var shapeColor = Color(red: 70.0/255.0, green: 200.0/255.0, blue: 255.0/255.0)
  
  var body: some View {
    VStack {
      Text("Color Picker") // App title
        .font(.largeTitle)
      // Set rounded rectangle shape with initial shape color
      RoundedRectangle(cornerRadius: 0.0)
        .stroke(.black, lineWidth: 1)
        .fill(shapeColor)
        .frame(maxHeight: 300.0)
      // Set sliders with rounded values bound to red, green and blue colors, with accompanying labels
      Text("Red")
      HStack {
        Slider(value: $redValue, in: 0...255.0)
        Text("\(Int(redValue.rounded()))")
      }
      Text("Green")
      HStack {
        Slider(value: $greenValue, in: 0...255.0)
        Text("\(Int(greenValue.rounded()))")
      }
      Text("Blue")
      HStack {
        Slider(value: $blueValue, in: 0...255.0)
        Text("\(Int(blueValue.rounded()))")
      }
      // Button to set shape color to slider values
      Button("Set Color") {
        shapeColor = Color(red: redValue/255.0, green: greenValue/255.0, blue: blueValue/255.0)
      }
    }
    .padding()
  }
}

#Preview {
  ContentView()
}
