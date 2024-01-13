//
//  SliderView.swift
//  Color Picker
//
//  Created by Jake Smolowe on 1/12/24.
//

import SwiftUI

struct SliderView: View {
  @Binding var sliderValue: Double
  
  var body: some View {
    Slider(value: $sliderValue, in:Constants.Slider.minimumValue...Constants.Slider.maximumValue)
  }
}

struct SliderContainer: View {
  @Binding var sliderValue: Double
  var title: String
  var tint: Color
  
  var body: some View {
    VStack {
      SliderLabel(title: title)
      HStack {
        SliderView(sliderValue: $sliderValue)
          .tint(tint)
        SliderNumber(colorValue: sliderValue)
      }
      .padding(.horizontal, Constants.General.roundRectPadding)
    }
  }
}

struct sliderGroup: View {
  @Binding var redValue: Double
  @Binding var greenValue: Double
  @Binding var blueValue: Double
  @Binding var shapeColor: Color
  
  var body: some View {
    VStack {
      SliderContainer(sliderValue: $redValue, title: "Red", tint: Constants.Slider.Colors.sliderRed)
      SliderContainer(sliderValue: $greenValue, title: "Green", tint: Constants.Slider.Colors.sliderGreen)
      SliderContainer(sliderValue: $blueValue, title: "Blue", tint: Constants.Slider.Colors.sliderBlue)
      // Button to set shape color to slider values
      SetColorButton(shapeColor: $shapeColor, redValue: $redValue, greenValue: $greenValue, blueValue: $blueValue)
    }
  }
}

struct SliderView_Previews: PreviewProvider {
  static private var sliderValue = Binding.constant(128.0)
  static private var shapeColor = Binding.constant(Color(.red))
  static private var redValue = Binding.constant(Constants.Slider.Colors.redValue)
  static private var greenValue = Binding.constant(Constants.Slider.Colors.greenValue)
  static private var blueValue = Binding.constant(Constants.Slider.Colors.blueValue)
  
  static var previews: some View {
    sliderGroup(redValue: redValue, greenValue: greenValue, blueValue: blueValue, shapeColor: shapeColor)
    //    SliderContainer(sliderValue: sliderValue, title: "Green", tint: .green)
  }
}
