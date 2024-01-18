#### Part 1 - Short-answer questions.
a) 0…5 and 0..<5 are two types of **ranges**. How are they different?</br>

**`0...5` is a *closed range*; it includes both the lower and upper boundaries of the range (in this case: 0, 1, 2, 3, 4, 5).**

**`0..<5` is a *half-open range*; it includes only the lower boundary of the range and not the upper boundary (in this example: 0, 1, 2, 3, 4).**

b) Describe type inference in Swift and give an example.</br>
**Type inference refers to the Swift compiler's ability to detect the type of a variable or constant based on its value. For example, I could declare a variable named `petAge` and set it to a value of `13`, like so: `var petAge = 13`. Swift would be able to infer that the type of my variable was an `Int`, because I set it to a numeric value with no decimal point.**

c) List three advantages of Playgrounds.
- **You can set Playground code to auto-run and evaluate and display expression results in real-time (every time you make a change), so you can quickly run experiments with your code (tweaking functions, trying out different input parameter values, etc.)**
- **Alternatively, you can set your Playground to manually run and just run parts of your code at a time—if you click on the play button to the left of a line you can run your code only up to that line, which is good if you just want to test out a small portion of your code.**
- **Playgrounds have a Results Sidebar on the righthand side where you can see the results of each line, method and function of your code. You can click on the square show/hide button next to a result to expand it in the main editor section, or the Quick Look button to show the results in a Quick Look display. You can even see Graph or Value History views of the results of a loop.**

d) When does the execution of a while loop end?</br>

**The first time the condition of the while loop is not satisfied. If the condition is never satisfied, it's possible that the while loop never runs.**

e) True or False: Tuples in Swift can contain values of different data types. **True**

f) List three data types you have used in Swift.
- **String**
- **Int**
- **Boolean**

g) To execute alternative code when the condition of an if statement is not met, you can use what clause? **An else clause**

h) What is the third element of the array nums defined below?  **44**

let nums = [5, 0, 44, 20, 1]. 

i) An **expression** is a unit of code that resolves to a single value.

j) Define two ways to unwrap optionals in Swift.</br>
**You can use an `if-let` statement to test if the optional has a value, like so:**
```var movieWatchedYesterday: String? = "Self-Reliance"
if let movieWatchedYesterday = movieWatchedYesterday {
	print("I watched '\(movieWatchedYesterday)' yesterday.")
} else {
	print("I didn't watch a movie yesterday")
}
```
**You can also use nil coalescing to give your optional variable a default value if no value is assigned:**

`var mandatoryMovieTitle = movieWatchedYesterday ?? "Avengers: Endgame"`

**Here, *Avengers: Endgame* is my default movie if I didn't watch a different movie yesterday.**

k) True or False: The condition in an if statement must be true or false.</br>

**True, but you can also use one or more `else-if` statements to evaluate multiple cases if the initial `if` statement evaluates to `false`**

l) Arrays in Swift are **zero** indexed.

m) An unordered collection of unique values of the same type is a **set**.

#### Part 3 - Above and Beyond.
**The first line uses the area method of `struct Square` to print out the area of `square1`, a square with a `side` of length 4, resulting in an area of 4 x 4 = 16. Then it does the same with `square2`, which was copied from `square1`, and because structs are *value types*, assigning `square2` to `square1` creates a new, independent instance of a `Square.` Changing the `side` property of `square2` does not affect `square1` in any way. `square2` is then modified to have sides of length 5 (leaving `square1` with a `side` of length 4), resulting in an area of 5 x 5 = 25.**

**The second line applies the same methods to two instances of the `Rectangle` class. `rectangle1` starts out with a `length` and `width`  of 4. We then create a new instance, `rectangle2,` assigning it to `rectangle1`. However, because classes are *reference types*, assigning `rectangle2` to `rectangle1` doesn't create a unique instance, it just creates a copy. The properties of each copy are tied together, so changing the `length` of `rectangle2` to 5 also does the same to `rectangle1.` Both end up with a `length` of 5 and `width` of 4, resulting in an `area` of 4 x 5 = 20 for both `rectangle1` and `rectangle2`.