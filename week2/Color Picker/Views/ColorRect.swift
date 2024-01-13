//
//  ColorRect.swift
//  Color Picker
//
//  Created by Jake Smolowe on 1/12/24.
//

import SwiftUI

struct ColorRect: View {
  @Binding var shapeColor: Color
  
  var body: some View {
    RoundedRectangle(cornerRadius: Constants.General.roundRectCornerRadius)
      .stroke(Color("RoundedRectBorderColor"), lineWidth: Constants.General.roundRectLineWidth)
      .fill(shapeColor)
      .frame(maxHeight: Constants.General.roundRectMaxHeight)
      .padding(Constants.General.roundRectPadding)
  }
}

struct ColorRect_Previews: PreviewProvider {
  static private var shapeColor = Binding.constant(Color(red: Constants.Slider.Colors.redValue/Constants.Slider.maximumValue, green: Constants.Slider.Colors.greenValue/Constants.Slider.maximumValue, blue: Constants.Slider.Colors.blueValue/Constants.Slider.maximumValue))
  
  static var previews: some View {
    ColorRect(shapeColor: shapeColor)
  }
}
