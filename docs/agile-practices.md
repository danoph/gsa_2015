Agile Practices
===============

_Note: while we have split these brief descriptions of our general practices into separate sections, these distinctions are made here more for organizational clarity than to be truly descriptive or representative of the way we think about software development, as no one piece could function properly without the other(s). Design, development, and quality assurance are all important pieces of our process throughout the entirety of a project's life-cycle._

## Software Development Practices

We employ an **Agile Software Development Methodology**, which is an incremental software development that places the emphasis on empowering people to collaborate and make team decisions in addition to continuous planning, continuous testing, and continuous integrations. We use of Story Writing, Kanban, Test Driven Development, Pair Programming, Team Overview and User Stories during the course of the software development to ensure an extremely high rate of project success and customer satisfaction.

We employ **Kanban** boards to manage our work with an emphasis on just-in-time delivery without overloading the team members.  In this approach, the process, from definition of a task to its delivery to the customer, is visually displayed in the team area (using physical tack-boards or TV-displayed electronic Kanban boards, such as Trello) for participants to see and for team members to pull work from a queue. 

At daily or twice-a-day **stand-ups** (short team meetings), the team "checks in" on the work in development, which is clearly displayed on the Kanban board, and discusses any barriers they may have so that they can be solved by the team as a whole. In most projects, the team participates in weekly or bi-weekly retrospectives, where the team reflects on what happened in the previous iteration (a week's or two week's worth of work) and identifies actions for improvement going forward.  

Further detail about some of our development strategies and methods can be found below:

### Pair Programming

We utilize the practice of pair programming. **Pair programming** is an agile software development technique in which two programmers work as a pair together on one workstation.  One, the driver, writes code while the other, the observer, pointer, or navigator, reviews each line of code as it is typed in. This approach has significant benefits to both quality and maintainable code base by providing real-time code review and an extra set of eyes on any given coding problem.

### Test-driven Development (Unit Testing)

We create tests to validate whether each discrete unit of code will work as intended. **Test-driven Development** is a software development process that relies on the repetition of a very short development cycle: first one developer in the pair writes an (initially failing) automated test case that defines a desired improvement or new function, then the pair works together to produce the minimum amount of code to pass that test. After there is enough code/functionality to make it practicable, the developers then refactor the new code to acceptable code standards. 

### Version/Source Control

We use software version/source control (most commonly Git) to facilitate better large-team collaboration as well as transparency into the development of the project over time, enabling us to backtrack if necessary to identify the source of any problems that may arise. Git allows us to have multiple pairs working on the same code base at the same time, after which the developers "merge" their changes back into the master version. This extra step provides another layer of code review, where the developers doing the merge take yet another look at the code to make sure it meets its requirements for both functionality and coding standards.

Quality Assurance Practices
===========================

The quality assurance practices employed for this project (as well as on any other project we do) are designed to prevent bugs, not just find and fix them. Our developers employ "pair programming" to catch errors at the keyboard and ensure to a uniform, maintainable approach to architecture and software coding standards. We embed QA personnel, whom we call "quality advocates" (because their job is to advocate for quality throughout the life-cycle of the project, not just as "assurance" at the end), into each of our development teams so that they can help facilitate quality throughout the project. 

We begin the QA process before a line of code is written by collaborating on how the application is going to be built and continually asking, "How will we test this to know it's working correctly? How will we make it fail to prove that we have a good test?" 

Next, we ask questions regarding the application's workflow, checking for design consistency -- will it be able to handle the required data load, how will it respond to poor or zero network connectivity, a missing database, interruptions from a call or text coming in, etc. We have a rigorous protocol to ensure all user stories (bit-sized pieces of functionality) are created with explicit acceptance criteria to ensure that the code being written lines up with what the customers/users actually need. 

Once it is time to perform exploratory and manual testing, our quality assurance engineers run a "smoke test," which determines if the build of the app was dead on arrival (i.e., is smoke coming out of it?). Next, they  test the highest risk areas, such as anything that was recently changed in development and anything that's a high priority to the client. Regression testing goes over all the features in detail.

The specific tests we perform will change over the course of a project. While we do not prescribe a rigid set of procedures for each project, our quality assurance engineers are empowered to craft their work to the unique needs of each application. 

Further detail about some of our QA strategies and methods can be found below:

### Automated Testing

We employ automated tests to confirm immediately that any new code does not adversely impact features already completed. Tests are written around specific areas of functionality to ensure that they both meet the acceptance criteria for user stories as well as function as a whole. 

Writing automated tests is an action with payoffs that far outweigh the cost of needing to maintain the test suite. Since automated UATs can run on every code check-in, they can catch regressions before a manual test can be completed. They also provide an ongoing benchmark of performance, since the time taken to run an individual test is known over the list of that test from available test logs. Since you can also run automated UATs continually, they provide “soak test” data where a system is exercised to spot possible memory leaks and performance issues that will not occur on a clean test run. 

Automated UATs are a "force multiplier" in that they allow computers to do what they're good at (repetitive tests with known parameters and expected outcomes) and allow people to focus on writing good automated tests, spotting patterns in test failures, exploring boundary conditions and edge cases, and helping the team towards better defined stories which prevent defects and deviations from what the customer wants from the project.

### Continuous Integration 

Continuous integration, when combined with automated testing, ensures that a system works exactly as it’s designed to work after each and every change. Customer acceptance tests not only guarantee the code works properly, but also verify that the individual business functions of the system work correctly. By continuously performing integration testing and continuously building the applications, we can both ensure quality as well as provide our users with live, working software (i.e., current-working-state versions) at virtually any time during the project, which also helps facilitate regular demonstrations of working software to our customers.


## User Experience/Design Practices

Our success with delivering the best possible functional design and user experience (UX) stems from two primary areas: skilled designers and environment. Each member of our design/user experience team goes through a stringent certification program for usability analysis and interaction design. Each designer is responsible for introducing elements of the user experience process such as card sorting, task flow analysis, prototyping, and usability testing to every project. 

All of our designers/UX experts are embedded into the project team. This ensures that good design and user experience are woven into the fabric of the developing application from start to finish. It is expected that our designers are part of the QA process, as each UI (user interface) story makes it through development, prior to customer demonstration. 

For most projects, our designers and UX experts are leading usability testing sessions and incorporating that end-user feedback into the designs. We employ any number of strategies and methods, including wire-framing, prototyping, and usability testing, to ensure that our designs are not only functional and easy to use, but also meet customer and user expectations and deeds.