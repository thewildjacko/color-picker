import Cocoa

// A
var numsArray = (0...20).map { $0 }

// original function
func average(array: [Int]?) {
  guard let array = array else {
    print("The array is nil. Calculating the average is impossible")
    return
  }
  
  var sum = 0
  for num in array {
    sum += num
  }
  print("The average of the values in the array is \(sum/array.count)")
}

// overload #1
func average(ofNumsIn array: [Int]?) {
  guard let array = array else {
    print("The array is nil. Calculating the average is impossible")
    return
  }
  
  var sum = 0
  for num in array {
    sum += num
  }
  print("The average of the numbers in the array is \(sum/array.count)")
}

average(ofNumsIn: numsArray)

// overload #2
func average(array: [Double]?) {
  guard let array = array else {
    print("The array is nil. Calculating the average is impossible")
    return
  }
  
  var sum = 0.0
  for (num) in array {
    sum += Double(num)
  }
  let average = sum/Double(array.count)
  print("The average of the values in the array is \(average))")
}

let dubArray = numsArray.map { Double($0) }
average(array: dubArray)

print("------")

// B
enum Animal {
  case cat, dog, goat, cow, owl
}

func theSoundMadeBy(animal: Animal) {
  switch animal {
  case .cat:
    print("Meow!")
  case .dog:
    print("Woof!")
  case .goat:
    print("Baaa!")
  case .cow:
    print("Mooooo!")
  case .owl:
    print("Hoo! Hoo!")
  }
}

theSoundMadeBy(animal: .cat)
theSoundMadeBy(animal: .owl)

print("------")

// C
var nums = (0...100).map { $0 }
var numsWithNil = [79, nil, 80, nil, 90, nil, 100, 72]
var numsBy2 = stride(from: 2, through: 100, by: 2).map { $0 }
var numsBy4 = stride(from: 2, through: 100, by: 4).map { $0 }

func evenNumbersArray(array: [Int]) -> [Int]  {
  array.filter { $0 % 2 == 0 }
}
print("evenNumbersArray:")
print(evenNumbersArray(array: nums))

func sumOfArray(array: [Int?]) -> Int {
  array.compactMap { $0 }.reduce(0, +)
}
print("\nSum of numsWithNil:")
print(sumOfArray(array: numsWithNil))

func commonElementsSet(array1: [Int], array2: [Int]) -> Set<Int> {
  return Set(array1).intersection(Set(array2))
}

print("\nCommon elements in numsBy2 & numsBy4:")
print(commonElementsSet(array1: numsBy2, array2: numsBy4))
print("------")
// D

extension Double {
  func squared() -> Double { self * self }
}

struct Square {
  let sideLength: Double
  var area: Double {
    sideLength.squared()
  }
}

let square = Square(sideLength: 5)
print("The area of the square is \(square.area).")
print("------")

// Above and Beyond
protocol Shape {
  func calculateArea() -> Double
}

struct Circle: Shape {
  let radius: Double
  
  func calculateArea() -> Double {
    .pi * radius.squared()
  }
}

struct Rectangle: Shape {
  let length: Double
  let width: Double
  
  func calculateArea() -> Double {
    length * width
  }
}

let circle = Circle(radius: 7.0)
let rectangle = Rectangle(length: 11.0, width: 4.0)

print("The area of the circle is \(circle.calculateArea()).")
print("The area of the square is \(rectangle.calculateArea()).")

extension Shape {
  func calculateVolume() -> Double { return 0 }
}

struct Sphere: Shape {
  let radius: Double
  
  func calculateArea() -> Double {
    4 * .pi * radius.squared()
  }
  
  func calculateVolume() -> Double {
    4/3 * .pi * radius.squared() * radius
  }
}

let sphere = Sphere(radius: 6.0)
print("The area of the sphere is \(sphere.calculateArea()).")
print("The volume of the sphere is \(sphere.calculateVolume()).")
