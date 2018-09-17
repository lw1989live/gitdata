# test massage
Git is a distributed version control system. 
Git is free software distributed under the GPL. 
Git has a mutable index called stage. 
Git tracks changes of files. 
Creating a new branch is quick & simple. 

#git常用命令
#推送本地最新修改到远程仓库origin的master分支
> git push origin master
#从远程仓库origin下载新分支与数据
> git fetch origin
#将从远端仓库origin提取的更新分支同步到当前分支
> git merge origin/master
#查看git提交历史
> git log --graph --pretty=oneline --abbrev-commit
#从远程库克隆
> git clone git@github.com:lw1989live/exercise.git