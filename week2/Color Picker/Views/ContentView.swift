//
//  ContentView.swift
//  Color Picker
//
//  Created by Jake Smolowe on 12/8/23.
//

import SwiftUI

struct ContentView: View {
  @Environment(\.verticalSizeClass) var verticalSizeClass
  @Environment(\.horizontalSizeClass) var horizontalSizeClass
  
  // Set initial slider color values
  @State private var redValue = Constants.Slider.Colors.redValue
  @State private var greenValue = Constants.Slider.Colors.greenValue
  @State private var blueValue = Constants.Slider.Colors.blueValue
  // Set initial fill color for shape
  @State private var shapeColor = Color(red: Constants.Slider.Colors.redValue/Constants.Slider.maximumValue, green: Constants.Slider.Colors.greenValue/Constants.Slider.maximumValue, blue: Constants.Slider.Colors.blueValue/Constants.Slider.maximumValue)
  
  var body: some View {
    if verticalSizeClass == .regular && horizontalSizeClass == .compact {
      VStack {
        Title(title: "Color Picker") // App title
        // Add rounded rectangle shape with initial shape color
        ColorRect(shapeColor: $shapeColor)
        // Add slider group with rounded values bound to red, green and blue colors, with accompanying labels
        sliderGroup(redValue: $redValue, greenValue: $greenValue, blueValue: $blueValue, shapeColor: $shapeColor)
      }
      .padding()
    } else {
      HStack {
        VStack {
          Title(title: "Color Picker") // App title
          // Add rounded rectangle shape with initial shape color
          ColorRect(shapeColor: $shapeColor)
        }
        .padding()
        VStack {
          // Add slider group with rounded values bound to red, green and blue colors, with accompanying labels
          sliderGroup(redValue: $redValue, greenValue: $greenValue, blueValue: $blueValue, shapeColor: $shapeColor)
        }
      }
      .padding()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
    ContentView()
      .previewInterfaceOrientation(.landscapeRight)
      .preferredColorScheme(.dark)
  }
}
