git init 
git status
git add -A <!-- add all  -->
git add file.file_name
git add . <!--  add current directory -->
git commit -m "message"
git push origin master
git log <!--  -->
git log --oneline
git branch name_of_branch <!-- describe what the change is / it will make a new branch with that name -->
git branch
    *master <!-- current master branch -->
git switch name_of_branch <!-- switch branch  -->
git checkout name_of_branch
git remote add url


git clone url

git reset HEAD <file>
git checkout -- <file>
git stash -u (untracked files) saves everything temporarily
git stash pop
<!--  -->


https://gist.github.com/kasun-maldeni/cb03c08241959d0f9d0b7d353b376491


GitLord
- create file structure sinatra new / npm init
    git add 
- git commit -m "message"
- create new repo on gitHub
- git add remote url <!-- url of repo -->

Others in group
- fork repo
- clone git clone url
- git remote add gitlord https://github.com/kasun-maldeni/project3.git
    -  git remote -v



Recurring workflow
- git branch branch_name
- git switch
- git add -A
- git commit -m ""
- git fetch origin <!-- gitlord / download commit -->
- git fetch gitlord <!-- others / download commit -->

- git rebase origin/master <!-- gitlord / add to branch -->
- git rebase gitlord/master <!-- others / add to branch -->

- git push origin branch_name <!-- -->

fork
!New pull request!

- select branch that we are working from


- git branch branch_name
- git switch

==============================
        Small changes

        pull regularly
==============================

==============================
        Conflicts
==============================

git status
    git add <fileName>
        git rebase --continue


<!--  -->