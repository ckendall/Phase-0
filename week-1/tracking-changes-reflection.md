#How does tracking and adding changes make developers' lives easier?
Tracking and adding changes makes lives so much easier because it allows the developer to see what they have done, where they are and what is going on in the project. Being able to add changes to previous works is a wonderful tool that helps in debugging. If I wasn't able to go back, in say, a word document I know that would be super frustrating. That is what this git environment gives, a way to change and add without worry.

#What is a commit?
A commmit is just like a save point. it allows developers to save their work in their system so they can come back to it at a later date or if they messed up on something. In other words it is a safety net for the developer.

#What are the best practices for commit messages?
Best practices for a commit message is short about 50 characters summary and one that is written in the imperative verb. It sounds kind of like caveman talk example: make color yellow, not makes color yellow, or made color yellow. Try and avoid past tense or present tenses.

#What does the HEAD^ argument mean?
HEAD^ is the last commit that you have worked on. It allows you to unstage the commit. unlike HEAD which is the commit currently on. HEAD-2, HEAD-3 is the sequential commits and HEAD^ is the last one. 

#What are the 3 stages of a git change and how do you move a file from one stage to the other?
The 3 stages of git are the working stage where one is actually working on the project, second is staged where one adds the work they have done to git. lastly, they then commit it ie save it so they can come back to it when they want. 

#Write a handy cheatsheet of the commands you need to commit your changes?
handy cheatsheet:
first pull to make sure everything is up to date
second create new branch with git checkout -b branch-name
3rd add  with git add .
4th commit with git commit -m "message here"
5th move to to GitHub or another remote repository
6th pull to merge everything

#What is a pull request and how do you create and merge one?
A pull request is a way to merge code from different branches onto the master branch. This allows no change to the master branch without careful revision. Once you push onto GitHub or your prefered remote repository go onto GitHub and follow the instructions set forth from them. It goes as follows: compare and pull request, add a title and comment, create pull request, them merge pull request and confirm merge.

#Why are pull requests preferred when working with teams?
pull request are prefeffed in teams because it allows teams to work on their own branch and then merge them after review and have all the team members review that code written and then merge to the master branch. 