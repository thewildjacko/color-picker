#### Part 1 - Short-answer questions.
a) What does the command ‘git status’ output?</br>
**It tells you what branch you're in and whether the repo is clean or whether there are uncommitted changes.**

b) In SwiftUI, anything that gets drawn on the screen is a **View**.

c) print(“Hello world”) is an example of a **function** call.
viewModel.getData() is an example of a **method** call.

d) Name some Views you have seen so far in SwiftUI.
  - **body**
  - **ContentView**
  - **Text**
  - **Button**
  - **VStack**
  - **HStack**
  - **ZStack**
  - **Slider**

e) How do you create a new local repository using git? (Feel free to answer with how you use git, i.e. terminal or another app)</br>
**In the GitHub app, press `command-n` or go to the File menu and select "new repository." In the dialogue box that appears, give your repository a name and description, and select a local path. You can also choose to add a readme file, a git ignore file, and a license. Then click "create repository."**

f) How do you preview your app in multiple orientations?</br>
**In Xcode, make sure the canvas is showing (`command-option-return`), and that the preview is running (`command-option-p`). In the bottom left corner of the canvas, click the variants button and select orientation variants from the dropdown menu. Then just click on the orientation you want. While previewing a given orientation, you can mouse over the left and right sides of the canvas and click the arrows that appear to switch between orientations.**

g) An app is made up of **files** of **classes and structs** that contain **properties and methods**.

h) Name two components of a SwiftUI Button.</br>
**label and action**

i) In git, what is the difference between a local repository and a remote repository?</br>
**A local repository is stored on your local computer/hard drive, and a remote repository is stored on a server that you can access from anywhere using GitHub**

j) Give an example of camel case.</br>
**keySignature**

k) What is a branch in git, and how do you create one? (Feel free to answer with how you use git, i.e. terminal or another app)</br>
**A branch is like a separate version of your repository that you can use to work on new and/or experimental features, or to test parts of your app, without affecting the main code base. Any changes you make on the branch won't be included in the main base until you merge them in. You create a new branch in the GitHub app by pressing `command-shift-n`, or selecting Branch -> New Branch in the Menu bar.**

l) What are some common mistakes that can lead to errors while programming?
    - **Typos**
    - **Capitalization errors**
    - **Too few/too many parentheses, quotes, brackets, or braces.**
    - **Forgetting to add commas between items in lists that require them**
    - **Missing colons, or semicolons instead of colons**
    - **Missing spaces/too many spaces**
    - **Using the wrong type for a var or let (Int instead of Double, or String instead of Int for example)**
    - **Using a let instead of a var or vice versa**
    - **Using the wrong type of return value or forgetting to return a value in a method/function that requires it**
    - **Forgetting to add parameters, or adding too many parameters, or adding the parameters in the wrong order**
    - **Forgetting a $ sign in a binding variable**
    - **In certain languages, forgetting to indent properly**
    - **Using a variable before declaring it**
    - **Using a variable out of scope**
    - **Not documenting your code**

m) VStack, HStack, and ZStack are **Container** views used for **organizing and arranging views linearly along the vertical, horizontal or depth axises.**

n) How do you list the branches on your local repository? (Feel free to answer with how you use git, i.e. terminal or another app)</br>
    - **In terminal: `git branch`**
    - **In GitHub: click the Current Branch button in the toolbar (next to Current Repository)**

o) What happens when @State variable changes in SwiftUI?</br>
**Whatever UI element it's bound to will automatically update to reflect the change in state of the variable (for example, a slider will move when you change the value of its @State variable)**

p) What is the Single Responsibility Principle?Lyra
**Each struct or class should have essentially one job (i.e. to manage what the user sees, or to manage the state of the Game—e.g. in Bullseye, the score, round, target number, points calculation, etc.). That way, your structs, classes and files don't get too large and unwieldy, and it's easy to see what everything does because each struct/class/file only controls one part of the app.**

q) What will the print statement below produce?</br>
```
var name = “Ozma”
print(“Hello, \(name)!”)
```
**Hello, Ozma!**

r) What commands can you use in git to download data from a remote repository? What commands can you use in git to send data to a remote repository? (Feel free to answer with how you use git, i.e. terminal or another app)</br>
**in GitHub, Fetch Origin downloads data from the remote repository. To send data to the remote, first you have to commit your changes by adding a summary (and optional description), and clicking "Commit to x" where x is the name of your current branch. Then, assuming there aren't any conflicts (resolving any that arise), press Push origin (`command-p`).**

s) Why is a programming To-Do list important, and what is a minimum viable product?</br>
**A programming To-Do list is important so that you define ahead of time the features that you absolutely need to have for your app to work, and also to define some features that might be nice to have if given enough time/resources. This helps you avoid feature creep or moving goalposts, so that you have a clear target in mind in order to launch your app. Minimum viable product (MVP) is an app that satisfies all the Must Haves on the To-Do list, but not necessarily any of the nice to haves. In other words, the app does what you want it to do, looks presentable, and works on the devices you're targeting.**

t) What is a simple way of describing Binding in SwiftUI?</br>
**Binding is used when you have a UI element that you want to update automatically when a variable is changed, and vice versa (like the slider and `$sliderValue` in Bullseye). You generally first define the var in your struct with `@State private var,` and then when you need to use it, you add a $ sign before the variable name.**

u) What command do you use in git to move changes from one branch to another? (Feel free to answer with how you use git, i.e. terminal or another app)</br>
**In GitHub, go to the branch you want to move changes into, and then select Branch -> Merge Into Current Branch (`command-shift-m`), and resolve any conflicts. Or, after making a change in one branch, if you don't want those changes to stay on that branch, switch to the branch you want to move the changes to, and select "Bring my changes to x" where x is your destination branch.**

v) What is the type of the variable defined below? **Int**</br>
`var a = 87`</br>

w) What is the difference between var and let?</br>
**Var defines a variable that can change in the future, while let is a constant that, once defined, never changes value. Let is useful when you know the value for some property will never change; if you use var for such a property then you run the risk of changing it accidentally to a value that you don't want. Var is useful for elements of your app that are dynamic and can change based on user input, the conditions of the app, or other circumstances.**

#### Part 3 - Above and Beyond
- In ContentView, lines 1 and 2 show the definition of **state Properties**.
- In ContentView, line 3 shows the definition of a **stored Property**.
- In ContentView, line 4 shows the definition of a **computed Property.**
- In ContentView, line 5 shows an   **instance** of Game calling the **method** points.
- In ContentView, line 6 is the definition of the **Method** doSomethingWithCounter().
- In Game, lines a, b, and c show the definition of **stored properties**.
- In Game, line d is the definition of the **method** points(sliderValue: Int).
- Lines 3, a, b, and c are the **stored Properties** and lines 6 and d are the **methods** of the structs.
```
 struct ContentView: View {
1    @State private var sliderValue: Int = 50
2    @State private var game: Game = Game()
3    private var counter = 0
4    var body: some View {
5        Text("The score is: \(game.points(sliderValue: sliderValue))")
     }
6    func doSomethingWithCounter() {
         // to be determined
     }
 }
 struct Game {
a    var target: Int = 37
b    var score: Int = 0
c    var round: Int = 1
d    func points(sliderValue: Int) -> Int {
        return 999
     }
 }
```
