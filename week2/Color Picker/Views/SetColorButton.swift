//
//  SetColorButton.swift
//  Color Picker
//
//  Created by Jake Smolowe on 1/12/24.
//

import SwiftUI

struct SetColorButton: View {
  @Binding var shapeColor: Color
  @Binding var redValue: Double
  @Binding var greenValue: Double
  @Binding var blueValue: Double
  
  var body: some View {
    Button("Set Color") {
      shapeColor = Color(red: redValue/Constants.Slider.maximumValue, green: greenValue/Constants.Slider.maximumValue, blue: blueValue/Constants.Slider.maximumValue)
    }
    .padding(Constants.General.roundRectPadding)
    .background(
      ZStack {
        Color("ButtonColor")
      }
    )
    .overlay(
      RoundedRectangle(cornerRadius: Constants.General.buttonCornerRadius)
        .strokeBorder(Color.white, lineWidth: Constants.General.buttonStrokeWidth)
    )
    .foregroundColor(.white)
    .cornerRadius(Constants.General.buttonCornerRadius)
    .bold()
    .font(.title3)
  }
}

struct SetColorButton_Previews: PreviewProvider {
  static private var shapeColor = Binding.constant(Color(.red))
  static private var redValue = Binding.constant(Constants.Slider.Colors.redValue)
  static private var greenValue = Binding.constant(Constants.Slider.Colors.greenValue)
  static private var blueValue = Binding.constant(Constants.Slider.Colors.blueValue)
  
  static var previews: some View {
    SetColorButton(shapeColor: shapeColor, redValue: redValue, greenValue: greenValue, blueValue: blueValue)
  }
}
