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
