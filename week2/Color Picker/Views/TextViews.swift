//
//  TextViews.swift
//  Color Picker
//
//  Created by Jake Smolowe on 1/12/24.
//

import SwiftUI

struct SliderNumber: View {
  var colorValue: Double
  
  var body: some View {
    Text(String(Int(colorValue.rounded())))
      .font(.title3)
      .fontWeight(.bold)
      .foregroundStyle(Color("TextColor"))
      .padding(.horizontal, Constants.General.sliderNumberPadding)
  }
}

struct SliderLabel: View {
  var title: String
  
  var body: some View {
    Text(title)
      .font(.title2)
      .foregroundStyle(Color("TextColor"))
  }
}

struct Title: View {
  var title: String
  
  var body: some View {
    Text(title)
      .font(.largeTitle)
      .fontWeight(.bold)
      .foregroundStyle(Color("TextColor"))
  }
}

struct TextViews_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      Title(title: "Color Picker")
      SliderLabel(title: "Green")
      SliderNumber(colorValue: 100)
    }
    .padding()
  }
}
