@echo off
::set /p path="Enter repository path: "
set /p msg="Enter commit msg: "
set /p commitDate="Enter commit date: "

::change repository path
cd F:\github\repo
git add .
set GIT_COMMITTER_DATE="%commitDate%"
git commit -m "%msg%"
git commit --amend --date="%commitDate%" --no-edit
git push
