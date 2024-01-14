//
//  Constants.swift
//  Color Picker
//
//  Created by Jake Smolowe on 1/12/24.
//

import Foundation
import SwiftUI

enum Constants {
  enum General {
    public static let roundRectCornerRadius = CGFloat(0.0)
    public static let roundRectMaxHeight = CGFloat(300.0)
    public static let roundRectLineWidth = CGFloat(15)
    public static let buttonStrokeWidth = CGFloat(2)
    public static let buttonCornerRadius = CGFloat(21.0)
    public static let sliderNumberPadding = CGFloat(10.0)
    public static let roundRectPadding = CGFloat(20.0)
  }
  
  enum Slider {
    public static let minimumValue = CGFloat(0)
    public static let maximumValue = CGFloat(255.0)
    
    enum Colors {
      public static let redValue = 70.0
      public static let greenValue = 200.0
      public static let blueValue = Double(Slider.maximumValue)
      public static let initialColor = Color(red: redValue/Constants.Slider.maximumValue, green: greenValue/Constants.Slider.maximumValue, blue: blueValue/Constants.Slider.maximumValue)
      public static let sliderRed = Color(.red)
      public static let sliderGreen = Color(.green)
      public static let sliderBlue = Color(.blue)
    }
  }
}
