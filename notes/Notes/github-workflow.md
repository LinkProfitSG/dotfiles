# GitHub Team Workflow
* This is a guide on how to work with 2 people or more in a team, when working on the same project. 
* This guide is in the context of software development with the help of GitHub as the maintainer.

## Team with only 2 people
In a team with only 2 people, a main branch can be used as a simpler solution instead of following the standard flows for more than 2 people team, since 2 people is relatively easy to manage.

#### Example workflow:
Dev A:
```
-> git pull (pull changes from main branch to keep up-to-date source)
-> Work on NPC pathfinding
-> Feature completed
-> git push (push changes directly into main branch)
```
Dev B:
```
-> git pull (pull changes from main branch, pulling NPC pathfinding feature into the dev B's local device)
-> Work on Environmental Behaviors
-> Feature completed
-> git push (push changes into main branch)
```
This workflow ensures the simplicity, easy to setup and follow. Despite the simplicity, a 2-person team can still follow the >2-person team workflow.

## More than 2 person team
In a team with more than 2 person, the workflows must be managed carefully and explicitly since more people means more complex and more maintenance. The baseline of the workflow is:
```
> Each task has its own branch and 1 or more person working on it
> Each person working in their respective branch must push to the branch
> When 2 person is working in the same branch, each person can run "git pull" to ensure up-to-date local branch
> When a branch's goal completed, it can then be merged into the main branch
> Developers that aren't working MUST "git pull" the main branch
> Developers that are currently working on another branch can decide whether or not to pull changes from the main branch, however it may add more complexity to the developer that does so
```
#### Example workflow:
Dev A:
```
-> Assigned a task to create a feature NPC pathfinding
-> git pull <main branch> (ensures project is up-to-date)
-> git switch -c feature/npc-pathfinding (create and switch a new branch)
-> Work on NPC pathfinding
-> Feature completed
-> git commit && git push (push changes to the feature/npc-pathfinding branch)
-> git merge main (merges the feature/npc-pathfinding branch to the main branch)
-> delete feature/npc-pathfinding branch
```
Dev B (not working on anything):
```
-> git pull <main branch> (pulls changes that were previously merged from feature/npc-pathfinding branch)
```
*For any person that is currently working on another branch, the changes that were pushed to the main branch can be ignored until their own work is completed.*
*For a 2 person working in the same branch, the workflow is similar to the "Team with only 2 people" section.*
