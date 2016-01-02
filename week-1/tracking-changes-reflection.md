
## How does tracking and adding changes make developers' lives easier?
I don't understand the question. Git tracks files that you add to the staging area. Tracking and adding changes seems like a non-value-adding task. It doesn't make your life easier. Using git makes your life easier.

## What is a commit?
A commit is a snapshot of the code at a specific time.

## What are the best practices for commit messages?
Commit messages should be in the imperative tense, and should be no more than 50 characters long.

## What does the HEAD^ argument mean?
HEAD is the current position of the commit.

## What are the 3 stages of a git change and how do you move a file from one stage to the other?
The 3 stages of a git change are untracked, staged, committed.
To stage a file, you use 'git add {{filename}}' or 'git add --all'
To commit a file use 'git commit -m {{commit_message}}' or 'git commit -v'

## Write a handy cheatsheet of the commands you need to commit your changes?
commit = git commit -m
stage all files = git add --all
stage specific file = git add {{filename}}
unstage file = git checkout {{filename}}

## What is a pull request and how do you create and merge one?
A pull request is a request to add the changes that you have made to a codebase. To do this, log into github and click 'New Pull Request'. Select the branch that you would like to merge. Select 'merge branch'. Select 'confirm merge'. Optionally, select 'delete branch'.

## Why are pull requests preferred when working with teams?

When working with teams, pull requests are preferable to pushing changes directly to master because it prevents conflicts due to multiple people working on the same document at the same time.
