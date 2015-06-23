Software Development Practices
==============================

_Note: while we have split these brief in-depth descriptions of our practices into "software development practices," "quality assurance practices," and "user experience/design practices," these distinctions are made here more for organizational clarity than to be truly descriptive or representative of the way we think about software development, as no one piece could function properly without the other(s). Design, development, and quality assurance are all important pieces of our process throughout the entirety of a project's life-cycle._

We employ an **Agile Software Development Methodology**, which is an incremental software development that places the emphasis on empowering people to collaborate and make team decisions in addition to continuous planning, continuous testing, and continuous integrations. We use of Story Writing, Kanban, Test Driven Development, Pair Programming, Team Overview and User Stories during the course of the software development to ensure an extremely high rate of project success and customer satisfaction.

We employ **Kanban** boards to manage our work with an emphasis on just-in-time delivery without overloading the team members.  In this approach, the process, from definition of a task to its delivery to the customer, is visually displayed in the team area (using physical tack-boards or TV-displayed electronic Kanban boards, such as Trello) for participants to see and team members pull work from a queue. 

At daily or twice-a-day **stand-ups** (short team meetings), the team "checks in" on the work in development, which is clearly displayed on the Kanban board, and discusses any barriers they may have so that they can be solved by the team as a whole. In most projects, the team participates in weekly or bi-weekly retrospectives, where the team reflects on what happened in the previous iteration (a week's or two week's worth of work) and identifies actions for improvement going forward.  

Further detail about some of our development strategies and methods can be found below:

## Pair Programming

We utilize the practice of pair programming. **Pair programming** is an agile software development technique in which two programmers work as a pair together on one workstation.  One, the driver, writes code while the other, the observer, pointer, or navigator, reviews each line of code as it is typed in. This approach has significant benefits to both quality and maintainable code base by providing real-time code review and an extra set of eyes on any given coding problem.

## Test-driven Development (Unit Testing)

We create tests to validate whether each discreet unit of code will work as intended. **Test-driven Development** is a software development process that relies on the repetition of a very short development cycle: first one developer in the pair writes an (initially failing) automated test case that defines a desired improvement or new function, then the pair works together to produce the minimum amount of code to pass that test. After there is enough code/functionality to make it practicable, the developers then refactor the new code to acceptable code standards. 

## Version/Source Control

We use software version/source control (most commonly Git) to facilitate better large-team collaboration as well as transparency into the development of the project over time, enabling us to backtrack if necessary to identify the source of any problems that may arise. Git allows us to have multiple pairs working on the same code base at the same time, after which the developers "merge" their changes back into the master version. This extra step provides another layer of code review, where the developers doing the merge take yet another look at the code to make sure it meets its requirements for both functionality and coding standards.