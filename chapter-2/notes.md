# Chapter 2 - Designing Classes with a Single Responsibility

The foundation of an object-oriented system is the *message*, but the most visible organisational structure is the *class*.

Designing classes can appear intimidating:
- "What are your classes?"
- "How many should you have?"
- "What behaviour will they implement?"
- "How much do they know about other classes?"
- "How much of themselves should they expose?"

The first step is to insist that your classes at this stage be **simple**. The goal is to model the application so that it does what it is supposed to be *right now* and it's easy to change *later*.

## Deciding what Belongs in a Class

### Group Methods into Classes
- The classes you define and the methods you write for them will influence how others think about your application.
- You *won't* get it right the first time, but that's okay because your well-designed application will be easy to change.

### Organising Code to Allow for Easy Changes
If you define "easy to change" as:
- Changes have no unexpected side effects
- Small changes in requirements require correspondingly small changes in code
- Existing code is easy to reuse
- The easiest way to make a change is to add code that in itself is easy to change

Then your code should be:
- **Transparent** - The consequences of change should be obvious
- **Reasonable** - The cost of any change should be proportional to the benefits the change achieves
- **Usable** - Existing code should be usable in new and unexpected contexts
- **Exemplary** - The code itself should encourage those who change it to perpetuate these qualities

Transparent, Reasonable, Usable and Exemplary (TRUE) code not only meets today's needs but can also be changed to meet the needs of the future.

## Creating Classes That Have a Single Responsibility
A class should do the smallest possible useful thing.

### An Example Application: Bicycles and Gears
*See bicycle.rb for an example class with a single responsibility*

### Why Single Responsibility Matters
- Reusable classes are pluggable units of well defined behaviour that have few entanglements.
- An application that's easy to change is like a box of building blocks - select the bits you need and assemble.

- A class that has more than one responsibility is difficult to reuse.

**You break your applications chance of breaking unexpectedly if you depend on classes that do too much.**

### Determining if a Class Has a Single Responsibility
*Attempt to describe the class in one sentence.*
- If you find yourself using the word "and" the class probably has more than one responsibility.
- If you find yourself using the word "or", the class has more than one responsibility and they're not even very related.

This is called *cohesion*. When everything in a class is related to its core purpose it is considered *highly cohesive*.

### Determining When to Make Design Decisions
Always ask yourself: *What is the future cost of doing nothing today?*

You may not have all of the information on hand to be able to make any decision now. For example:
- Client requirements may change, but you don't know what those changes will be.
- Your code might be lean currently, but future changes will require additional dependencies.
The information you receive in the future may help you with the design of the program. Therefore, doing nothing today isn't actually counter-productive.

*When the future cost of doing nothing is the same as the current cost, postpone the decision*.

## Writing Code That Embraces Change
Some techniques for writing code that embraces change:

### Depend on Behaviour, not Data
#### Hide Instance Variables
- Use attr_reader, attr_writer and attr_accessor
#### Hide Data Structures
- Use Structs

### Enforce Single Responsibility Everywhere
#### Extract Extra Responsibilities from Methods
- Split methods if they do more than one thing (similar to splitting classes).
#### Isolate Extra Responsibilities in Classes
- Use Structs and Blocks to split any extra responsibilities in a class. That way, if the design changes you can easily break that out into a new class.

*See gear.rb for examples*
