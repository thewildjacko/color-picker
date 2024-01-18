import SwiftUI

// a)
let range = 0...20
var nums: [Int] = []

for num in range {
  nums.append(num)
}
for num in nums where num % 2 == 0{
  print(num)
}
print("------")

// b)
let sentence = "The qUIck bRown fOx jumpEd over the lAzy doG"
let vowels: [Character] = ["a", "A", "e", "E", "i", "I", "o", "O", "u", "U"]

var count = 0
for char in sentence where vowels.contains(char) {
  count += 1
}
print("'\(sentence)' contains \(count) vowels.")
print("------")

// c)
let array1 = [0, 1, 2, 3, 4]
let array2 = [0, 1, 2, 3, 4]

for num1 in array1 {
  for num2 in array2 {
    print("\(num1) * \(num2) = \(num1 * num2)")
  }
}
print("------")
// d)
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

average(array: nums)

let optionalArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
average(array: optionalArray)
print("------")
// e)
struct Person {
  let firstName: String
  let lastName: String
  let age: Int
  
  func details() {
    print("Name: \(firstName) \(lastName), Age: \(age)")
  }
}

let jake = Person(firstName: "Jake", lastName: "Smolowe", age: 39)
jake.details()
print("------")
// f)
class Student {
  let person: Person
  let grades: [Int]
  
  init(person: Person, grades: [Int]) {
    self.person = person
    self.grades = grades
  }
  
  func calculateAverageGrade() -> Double {
    var sum = 0
    for grade in grades {
      sum += grade
    }
    
    return Double((sum/grades.count))
  }
  
  func details() {
    print("Name: \(person.firstName) \(person.lastName), Age: \(person.age), GPA: \(calculateAverageGrade())")
  }
}
print("------")

let student = Student(person: jake, grades: [94, 99, 81, 100, 79])
student.details()
print("------")
// Above and beyond

struct Square {
  var side: Int
  func area() -> Int {
    return side * side
  }
}
class Rectangle {
  var length: Int
  var width: Int
  init(length: Int, width: Int) {
    self.length = length
    self.width = width
  }
  func area() -> Int {
    return length * width
  }
}
var square1 = Square(side: 4)
var square2 = square1
square2.side = 5
print("Area: square1 - \(square1.area()) square2 - \(square2.area())")
var rectangle1 = Rectangle(length: 4, width: 4)
var rectangle2 = rectangle1
rectangle2.length = 5
print("Area: rectangle1 - \(rectangle1.area()) rectangle2 - \(rectangle2.area())")
