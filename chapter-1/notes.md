# Chapter 1 - Object Oriented Design

## In Praise of Design

### The Problem Design Solves
- If you wrote a program that never needed to be changed or updated then it can be as messy or hacked as you wanted - good design doesn't matter.
- Requirements always do change, though, so a clear design is needed to be able to update and extend programs when needed.
- Well designed applications are easier to change. This makes them more cost-effective, as more change can be done in less time.

### Why Change is Hard
- OO programs are made of *objects* that pass *messages* between each other to produce the behaviour of the whole program.
- Sending correct messages between objects requires that they *know things* about each other.
- The need for this knowledge creates *dependencies*.
- OO design is about **managing dependencies**.

- Mismanagement of dependencies means that objects have to know a lot about each other in order to interact.
- Any changes made in this scenario can cascade out, wrecking the entire program.

- It is possible to maintain control over a badly designed application - if it is small.
- However, that program may need to grow or *change*, and that's where the bad design becomes apparent.

### A Practical Definition of Design
- Design is the art of wrangling code.
- You're not expected to write code whilst predicting future requirements - programmers (unfortunately) aren't psychics.
- Practical design does not anticipate what will happen to your application, it just acknowledges that *something* will change in the future.
- The primary goal of design is to reduce the cost of change.

## The Tools of Design
Just as a sculptor has chisels and files, an OO designer has principles and patterns.

### Design Principles

#### SOLID
| S     | O     | L | I | D |
| :------------- | :------------- | :--- | :--- | :--- |
| Single Responsibility | Open-Closed | Liskov Substitution | Interface Segregation | Dependency Inversion

#### DRY
| D | R | Y
| :------------- | :------------- | :--- |
| Don't       | Repeat       | Yourself

#### LoD
| L | o | D
| :------------- | :------------- | :--- |
| Law       | of       | Demeter

- It's difficult to quantify how "good" the design principles are. They're mainly based on empirical evidence.
- There was a study carried out in the 1990's that **did** show a link between good code and adherence to design principles. However, it wasn't conclusive.
- A study in 2001 scrutinised a NASA rocket science codebase (>500,000 lines). The findings of this research confirmed the need for good design principles.

### Design Patterns
- Design patterns are "simple and elegant solutions to specific problems in object-oriented design" that you can use to "make your own designs more flexible, modular, reusable and understandable".

- Popular Ruby gems are an excellent example of a good design pattern. They solve particular problems and can be re-used easily. They're also open-source, which allows for flexibility and understanding.

## The Act of Design
Even with the principles and patterns, *actually* solving OOD problems is still pretty difficult. Even with the right tools and an image of the end result, a novice carpenter would still find it very difficult to craft a sturdy piece of furniture.

### How Design Fails
- The first way is a lack of design. Devs initially don't know about design when they start learning how to code.
- Frameworks like Rails and the fact that Ruby is very programmer-friendly mean it's especially vulnerable to a lack of design.

- More experienced devs may know of OOD techniques, but not how to apply them. They may end up over-designing because of their lack of knowledge.

- OOD can also fail when the act of design is separated from the act of programming.
- This is where Agile practices come in - a quick feedback loop between design and programming will result in higher quality applications.

### When to Design
Agile:
- Your customers can't define the software they want before seeing it.
- Therefore, you should build software in tiny increments, piece-by-piece until you've built what meets the customer's true needs.
- Collaborating with your customers while building is the most cost-effective way of delivering software that they want.

- If Agile is correct (*which it is*), there's no point doing a Big Up Front Design (BUFD) because it can't possibly be correct.
- Furthermore, it's impossible to predict when the application will be considered finished because you don't know in advance what the product will eventually do.

- BUFD inevitably results in an adverserial relationship between customers and programmers.

BUFD and OOD are different:
- BUFD is about completely specifying and documenting the inner workings of an application, including where code goes and what it does.
- OOD is much narrower - it's just about arranging code so that it's easy to change.

**If you cannot write well-designed code you'll have to rewrite your application during every iteration.**
