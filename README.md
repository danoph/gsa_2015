README
======

Check out the working prototype at http://fda.ninja/.

## Description

FDA.ninja enables patients, providers, and other users to search for a drug by name to view label information and potential side effects. 

## Project Approach

Worldwide Technologies put together a team from their Asynchrony Labs subsidiary to respond to the GSA RFQ and build a prototype application using our proven [Agile methodologies](https://github.com/dwafler/gsa_2015/blob/master/docs/agile-practices.md). We assigned a Project Manager to lead the project and be accountable for the quality of our prototype, and assembled a team consisting of two Front-End Developers, a Back-end Developer, a DevOps Engineer, a UX Designer, a Quality Advocate, a writer/content designer, an Agile Coach, and a Product Owner. 

To help us understand what people need or could use from our prototype, we performed an "iteration zero" [Kick-off Ideation Session](https://github.com/dwafler/gsa_2015/tree/master/docs/pictures/kick-off-ideation-session), where we identified our target users and a primary use-case, planned an initial feature-set, and did some preliminary prototyping. From there we, wrote out stories, set up our development and testing environment, and began development. 

Throughout the course of the project, our team used human-centered design techniques and tools to create a usable, simple, and intuitive site. This included performing [user-interviews](https://github.com/dwafler/gsa_2015/blob/master/docs/ux/user-research.md) and [usability testing](https://github.com/dwafler/gsa_2015/tree/master/docs/ux/usability-testing), as well as creating [personas](#) and an application [style guide](https://github.com/dwafler/gsa_2015/blob/master/docs/ux/style-guide.png).

When we learned about the extended timeframe for the project, we decided it would be appropriate to take a little time to talk to have a [mini-retrospective](https://github.com/dwafler/gsa_2015/blob/master/docs/retrospective.md). Throughout the process, we used [iterative software development techniques](https://github.com/dwafler/gsa_2015/blob/master/docs/iteration-example.md), and both a physical and electronic Kanban (Trello, which mirrored our physical board) to track work. 

Our prototype is written in Ruby. As per instructions, it is provided as open-source (under the MIT License) and is built on open source technologies, including Docker, Rails, Jenkins, Foundation, JQuery, and Font Awesome. We designed it using a responsive layout so that it works on multiple devices and form-factors (we've tested it on PCs, tablets, and phones). 

We deployed our prototype using Amazon Web Services (AWS), which also supplies our continuous monitoring (AWS Cloud Watch). For continuous integration and automation, we used Jenkins, while we used Docker for our configuration management and container deployment. We leveraged the Labeling (`api.fda.gov/drug/label`) and Adverse events (`api.fda.gov/device/event`) APIs in our prototype.

## Installation and Local Deployment

Instructions for pulling down the repo and running the app locally on your box can be found in [docs/install-run.txt](https://github.com/dwafler/gsa_2015/blob/master/docs/install-run.txt).





