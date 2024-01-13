#### Part 1 - Short-answer questions.
a) Describe the two size classes in iOS.</br>
**There are two size classes, *regular* and *compact*. *Compact* refers to a smaller than normal amount of space; for example, the top and bottom edge of Portrait mode for iPhones have a size class of "compact width." 

***Regular* refers to a standard amount of space; the left and right edges of iPhones in Portrait mode have a "regular height." In Landscape mode, larger iPhone models have a "regular width," while smaller models have a "compact width"; all models of iPhones have a compact height in Landscape mode.**

b) What is Continuous Learning, and why is it important in mobile development?</br>
**Continuous learning is a way of keeping your skills sharp by always looking to improve on your knowledge and regularly using the skills you have in your chosen field. Because technology is always changing with the release of new devices, new operating systems and even new languages and software platforms, it's important to stay on top of the latest developments and best practices for the programming languages you use, and also stay fresh with the basics. This means practicing your coding skills regularly, compiling a list of resources and cheat sheets, and checking out blogs, books and courses on emerging changes for your field.**

c) How can you find out what modifiers a View has?</br>
**The easiest way is to type a `.` after the view declaration (either the final parentheses or bracket) and scroll the the autocomplete lis that pops up.**

d) What is a breakpoint?</br>
**It's a marker next to a line of code in Xcode or other IDEs that stops execution of your app at that line. Once program execution is halted, you can move use the debug tools (step into, step over, step out) to figure out exactly what's happening in your program during that phase of the execution.**

e) How can you access environment values in your App?</br>
**You create an `@Environment` variable at the top of your struct, before the body, and then specify the type of environment value you want in parentheses, with the value name preceded by a backslash and period (e.g. `@Environment(\.verticalSizeClass) var = verticleSizeClass`). Then you can refer to `verticalSizeClass` in the rest of the struct.**

f) How can you determine, in code, if the App is in Dark or Light Mode?</br>
**Declare an `@Enviroment(\.colorScheme)` variable in your struct, then test for it while setting colorScheme-dependent values using an if statement or a ternary operator.**

**Declaration: `@Environment(\.colorScheme) var colorScheme`**

**Test (example using opacity): `let opacity = colorScheme == .dark ? 0.4 : 0.7`**

g) Why are magic numbers an issue, and how should you avoid them?</br>

**Magic numbers are problematic because they are hard-coded values, often appearing several times in different locations in your code (for example the corner radius of a rounded rectangle view that appears in several different places), and if you want to change the number, you have to go hunting for every place that number appears. Also, because they're just numbers, they don't have descriptions associated with them, so they're hard to search for.**

**You can avoid them by declaring named constants in a separate Swift file, often using an `enum` or nested `enums` to contain them, so that you can use those same constants anywhere you want value to appear. You can then easily search for all the places your app uses that constant, and if you want to change the value later on you only have to change it in your one `Constants.swift` file.**

h) How can you view your App in Light and Dark Modes simultaneously?</br>

**In the Canvas, make sure your preview is running, then click the Variants button and select Color Scheme variants. You can then see your app in Light and Dark modes at the same time, click into one to see a larger view, and click the side arrows to navigate between the two modes.**

i) Below is an image of the Canvas from Xcode. The Canvas is in selectable mode. Can you explain why the red background does not cover the entire button area?</br>

![](https://lh7-us.googleusercontent.com/Rw5e_3ja5JkNz8Ih6v3ZJdKxu5PWB7Gn_Rw5Yl29HJbrzmqQwqt4ozZaEsToqJmb3lGbw9P7NJd0Iw614Mi8cu_41RAJUwem3yo1rn5TQJ33Ol2-l_R2AQz3otScEUTjiQJd7zQe8kSAdTg0)

**Every time you add a modifier to a view, it creates a new view with that modifier applied. So if you add a red `background` modifier before adding `padding`, it will put the red `background` only over the original frame of the button (without the `padding`), and then the `padding` will be added around the `background`. If you switch the modifier order so that `padding` comes first, then the red `background` should cover the entire button area.**

j) Modifier padding(10) adds padding to the view's top, bottom, left, and right sides. How could a padding of 10 be added to only the left and right sides of the view? The answer for this question should be a short section of code.</br>

`.padding(.horizontal, 10)`

k) Provide two reasons why you would want to extract views.
- **In order to separate out views that you plan on reusing in multiple places. If you're going to use the same type of text view in several places in your app, you can extract that view to a separate named struct so that you can refer to it wherever you want, plugging in different parameters as needed.**
- **In order to keep your main view clean and easy to navigate. If all your views are in one giant ContentView, your code can easily become bulky and difficult to navigate; extracting views that serve specific functions out to their own structs or even their own files can help you organize your code in a way that's easy to decipher and traverse.**

l) How can you determine, in code, if the device is in Portrait or Landscape mode?</br>

**By declaring `@Enviroment(\.verticalSizeClass)` and `@Enviroment(\.horizontalSizeClass)` variables in your struct, then testing for them in your view using if statements. On an iPhone, if `verticalSizeClass` is regular and `@Enviroment(\.horizontalSizeClass)` is compact, then you're in Portrait mode.**

m) What is a literal value? **The assigned or calculated value of a constant or variable, i.e. the number of an `Int,` or the actual characters inside a `String.`**

o) What are the safe areas?</br>
**The areas on a device that are safe for text and graphics, and will not be covered by system UI or hardware elements, like the iPhone status bar or the notch.**

p) This line of code was in the lesson on animation. Can you state in English what the line means?</br>

.frame(width: wideShapes ? 200 : 100

**It's a ternary operator, and it means that if `wideShapes` is `true`, then set the `frame` width to `200`, otherwise set it to `100`.

q) Describe the two transitions you were introduced to in this week’s lesson.
- **`.scale` grows and shrinks views between sizes (or between hidden and visible) from the center of the view**
- **`.slide` slides the view off to the side and back**

r) In Bullseye, the Game struct is what type of object? **A Data Model object**

s) What are SFSymbols?</br>

**A large and diverse library of symbols included with iOS that you can use as icons for your buttons or other interface elements in your app, and that resize automatically to fit the layout of your app. You can style and customize them, and also create your own that you can then reuse.**

t) What is the difference between “step into” and “step over " in the debugger?”</br>

**"Step into" executes the next instruction of your app, regardless of function or method. "Step over" executes the next instruction in the current function or method.**

u) Name some items you would place in the Asset Catalog (Assets.)
- **Custom, named colors that you want to reuse**
- **App icons**
- **Non-code-generated graphics (like images) that you want to use in your app**
- **Sprites**
- **Custom Symbols**

v) How do you change the Display Name of your app?</br>

**In the *Project Navigator*, click on the top level of your app (which will generally be the name of your project), then click the *General* tab, scroll to the *Identity* section (usually will be visible near the top) and enter a new Display Name.**