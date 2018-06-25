# 菜鸟教程
# Git 教程
## Git 与 SVN 区别
## Git 快速入门
本站也提供来Git快速入门版本，你可以点击 Git简明指南 查看。

入门后建议通过本站详细学习 Git 教程。

[Git 完整命令手册地址：](http://git-scm.com/docs)

[PDF 版命令手册：](github-git-cheat-sheet.pdf)

## 相关文章推荐
1. 1、[Git 五分钟教程](http://www.runoob.com/w3cnote/git-five-minutes-tutorial.html)
2. 2、[Git GUI使用方法](http://www.runoob.com/w3cnote/git-gui-window.html)
3. 3、[Github 简明教程](http://www.runoob.com/w3cnote/git-guide.html)
4. 5、[互联网组织的未来：剖析GitHub员工的任性之源](http://www.runoob.com/w3cnote/internet-organization-github.html)

# Git 安装配置
## Linux 平台上安装
### Debian/Ubuntu
### Centos/RedHat
## Windows 平台上安装
## Mac 平台上安装

## Git 配置
Git 提供了一个叫做 git config 的工具，专门用来配置或读取相应的工作环境变量。

这些环境变量，决定了 Git 在各个环节的具体工作方式和行为。这些变量可以存放在以下三个不同的地方：

/etc/gitconfig 文件：系统中对所有用户都普遍适用的配置。若使用 git config 时用 --system 选项，读写的就是这个文件。
~/.gitconfig 文件：用户目录下的配置文件只适用于该用户。若使用 git config 时用 --global 选项，读写的就是这个文件。
当前项目的 Git 目录中的配置文件（也就是工作目录中的 .git/config 文件）：这里的配置仅仅针对当前项目有效。每一个级别的配置都会覆盖上层的相同配置，所以 .git/config 里的配置会覆盖 /etc/gitconfig 中的同名变量。

### 用户信息
> $ git config --global user.name "runoob"
> $ git config --global user.email test@runoob.com
### 文本编辑器
> $ git config --global core.editor emacs
### 差异分析工具
> $ git config --global merge.tool vimdiff
Git 可以理解 kdiff3，tkdiff，meld，xxdiff，emerge，vimdiff，gvimdiff，ecmerge，和 opendiff 等合并工具的输出信息。

### 查看配置信息
要检查已有的配置信息，可以使用 git config --list 命令：

有时候会看到重复的变量名，那就说明它们来自不同的配置文件（比如 /etc/gitconfig 和 ~/.gitconfig），不过最终 Git 实际采用的是最后一个。

这些配置我们也可以在 ~/.gitconfig 或 /etc/gitconfig 看到

也可以直接查阅某个环境变量的设定，只要把特定的名字跟在后面即可，像这样：
> $ git config user.name

# Git 工作流程
本章节我们将为大家介绍 Git 的工作流程。

一般工作流程如下：

* 克隆 Git 资源作为工作目录。
* 在克隆的资源上添加或修改文件。
* 如果其他人修改了，你可以更新资源。
* 在提交前查看修改。
* 提交修改。
* 在修改完成后，如果发现错误，可以撤回提交并再次修改并提交。

# Git 工作区、暂存区和版本库
## 基本概念
我们先来理解下Git 工作区、暂存区和版本库概念

* 工作区：就是你在电脑里能看到的目录。
* 暂存区：英文叫stage, 或index。一般存放在 ".git目录下" 下的index文件（.git/index）中，所以我们把暂存区有时也叫作索引（index）。
* 版本库：工作区有一个隐藏目录.git，这个不算工作区，而是Git的版本库。

下面这个图展示了工作区、版本库中的暂存区和版本库之间的关系：

![暂存区和版本库之间的关系](http://www.runoob.com/wp-content/uploads/2015/02/1352126739_7909.jpg)

图中左侧为工作区，右侧为版本库。在版本库中标记为 "index" 的区域是暂存区（stage, index），标记为 "master" 的是 master 分支所代表的目录树。

图中我们可以看出此时 "HEAD" 实际是指向 master 分支的一个"游标"。所以图示的命令中出现 HEAD 的地方可以用 master 来替换。

图中的 objects 标识的区域为 Git 的对象库，实际位于 ".git/objects" 目录下，里面包含了创建的各种对象及内容。

当对工作区修改（或新增）的文件执行 "git add" 命令时，暂存区的目录树被更新，同时工作区修改（或新增）的文件内容被写入到对象库中的一个新的对象中，而该对象的ID被记录在暂存区的文件索引中。

当执行提交操作（git commit）时，暂存区的目录树写到版本库（对象库）中，master 分支会做相应的更新。即 master 指向的目录树就是提交时暂存区的目录树。

当执行 "git reset HEAD" 命令时，暂存区的目录树会被重写，被 master 分支指向的目录树所替换，但是工作区不受影响。

当执行 "git rm --cached <file>" 命令时，会直接从暂存区删除文件，工作区则不做出改变。

当执行 "git checkout ." 或者 "git checkout -- <file>" 命令时，会用暂存区全部或指定的文件替换工作区的文件。这个操作很危险，会清除工作区中未添加到暂存区的改动。

当执行 "git checkout HEAD ." 或者 "git checkout HEAD <file>" 命令时，会用 HEAD 指向的 master 分支中的全部或者部分文件替换暂存区和以及工作区中的文件。这个命令也是极具危险性的，因为不但会清除工作区中未提交的改动，也会清除暂存区中未提交的改动。

# Git 创建仓库
## git init

## 使用方法
> git init
> git init newrepo

## git clone
我们使用 git clone 从现有 Git 仓库中拷贝项目
> git clone <repo>
如果我们需要克隆到指定的目录，可以使用以下命令格式：
> git clone <repo> <directory>
参数说明：
repo:Git 仓库。
directory:本地目录。

# Git 基本操作
Git 的工作就是创建和保存你项目的快照及与之后的快照进行对比。本章将对有关创建与提交你的项目快照的命令作介绍。

## 获取与创建项目命令
### git init

### git clone
>  git clone [url]

## 基本快照
### git add
git add 命令可将该文件添加到缓存

git status 命令用于查看项目的当前状态。

新项目中，添加所有文件很普遍，我们可以使用 git add . 命令来添加当前项目的所有文件。

当你要将你的修改包含在即将提交的快照里的时候，需要执行 git add。

### git status
git status 以查看在你上次提交之后是否有修改。
我演示该命令的时候加了 -s 参数，以获得简短的结果输出。如果没加该参数会详细输出内容

### git diff
执行 git diff 来查看执行 git status 的结果的详细信息。

git diff 命令显示已写入缓存与已修改但尚未写入缓存的改动的区别。git diff 有两个主要的应用场景。

* 尚未缓存的改动：git diff
* 查看已缓存的改动： git diff --cached
* 查看已缓存的与未缓存的所有改动：git diff HEAD
* 显示摘要而非整个 diff：git diff --stat

git status 显示你上次提交更新后的更改或者写入缓存的改动， 而 git diff 一行一行地显示这些改动具体是啥。

### git commit
使用 git add 命令将想要快照的内容写入缓存区， 而执行 git commit 将缓存区内容添加到仓库中。

Git 为你的每一个提交都记录你的名字与电子邮箱地址，所以第一步需要配置用户名和邮箱地址。

接下来我们写入缓存，并提交对 hello.php 的所有改动。在首个例子中，我们使用 -m 选项以在命令行中提供提交注释。

如果你没有设置 -m 选项，Git 会尝试为你打开一个编辑器以填写提交信息。 如果 Git 在你对它的配置中找不到相关信息，默认会打开 vim。

如果你觉得 git add 提交缓存的流程太过繁琐，Git 也允许你用 -a 选项跳过这一步

### git reset HEAD
git reset HEAD 命令用于取消已缓存的内容。

简而言之，执行 git reset HEAD 以取消之前 git add 添加，但不希望包含在下一提交快照中的缓存。

### git rm
如果只是简单地从工作目录中手工删除文件，运行 git status 时就会在 Changes not staged for commit 的提示。

要从 Git 中移除某个文件，就必须要从已跟踪文件清单中移除，然后提交。可以用以下命令完成此项工作
> git rm <file>

如果删除之前修改过并且已经放到暂存区域的话，则必须要用强制删除选项 -f
> git rm -f <file>

如果把文件从暂存区域移除，但仍然希望保留在当前工作目录中，换句话说，仅是从跟踪清单中删除，使用 --cached 选项即可
> git rm --cached <file>

可以递归删除，即如果后面跟的是一个目录做为参数，则会递归删除整个目录中的所有子目录和文件：
> git rm –r * 
进入某个目录中，执行此语句，会删除该目录下的所有文件和子目录。

### git mv
git mv 命令用于移动或重命名一个文件、目录、软连接。

# Git 分支管理
几乎每一种版本控制系统都以某种形式支持分支。使用分支意味着你可以从开发主线上分离开来，然后在不影响主线的同时继续工作。

有人把 Git 的分支模型称为"必杀技特性"，而正是因为它，将 Git 从版本控制系统家族里区分出来。

创建分支命令：
>git branch (branchname)

切换分支命令:
> git checkout (branchname)

当你切换分支的时候，Git 会用该分支的最后提交的快照替换你的工作目录的内容， 所以多个分支不需要多个目录。

合并分支命令:
> git merge 
你可以多次合并到统一分支， 也可以选择在合并之后直接删除被并入的分支。

## Git 分支管理Git 分支管理
### 列出分支
列出分支基本命令：
> git branch
没有参数时，git branch 会列出你在本地的分支。

如果我们要手动创建一个分支。执行 git branch (branchname) 即可。

接下来我们将演示如何切换分支，我们用 git checkout (branch) 切换到我们要修改的分支。

我们也可以使用 git checkout -b (branchname) 命令来创建新分支并立即切换到该分支下，从而在该分支中操作。

### 删除分支
删除分支命令：
> git branch -d (branchname)

分支合并
一旦某分支有了独立内容，你终究会希望将它合并回到你的主分支。 你可以使用以下命令将任何分支合并到当前分支中去：
> git merge

### 合并冲突
合并并不仅仅是简单的文件添加、移除的操作，Git 也会合并修改。

我们将前一个分支合并到 "master" 分支，一个合并冲突就出现了，接下来我们需要手动去修改它。

在 Git 中，我们可以用 git add 要告诉 Git 文件冲突已经解决

现在我们成功解决了合并中的冲突，并提交了结果。

# Git 查看提交历史
在使用 Git 提交了若干更新之后，又或者克隆了某个项目，想回顾下提交历史，我们可以使用 git log 命令查看。

我们可以用 --oneline 选项来查看历史记录的简洁的版本。

这告诉我们的是，此项目的开发历史。

我们还可以用 --graph 选项，查看历史中什么时候出现了分支、合并。以下为相同的命令，开启了拓扑图选项：

你也可以用 '--reverse'参数来逆向显示所有日志。

如果只想查找指定用户的提交日志可以使用命令：git log --author , 例如，比方说我们要找 Git 源码中 Linus 提交的部分：

如果你要指定日期，可以执行几个选项：--since 和 --before，但是你也可以用 --until 和 --after。
例如，如果我要看 Git 项目中三周前且在四月十八日之后的所有提交，我可以执行这个（我还用了 --no-merges 选项以隐藏合并提交）：

$ git log --oneline --before={3.weeks.ago} --after={2010-04-18} --no-merges

更多 [git log 命令可查看：](http://git-scm.com/docs/git-log)

# Git 标签
如果你达到一个重要的阶段，并希望永远记住那个特别的提交快照，你可以使用 git tag 给它打上标签。
比如说，我们想为我们的 runoob 项目发布一个"1.0"版本。 我们可以用 git tag -a v1.0 命令给最新一次提交打上（HEAD）"v1.0"的标签。

-a 选项意为"创建一个带注解的标签"。 不用 -a 选项也可以执行的，但它不会记录这标签是啥时候打的，谁打的，也不会让你添加个标签的注解。 我推荐一直创建带注解的标签。
> $ git tag -a v1.0 

当你执行 git tag -a 命令时，Git 会打开你的编辑器，让你写一句标签注解，就像你给提交写注解一样。

现在，注意当我们执行 git log --decorate 时，我们可以看到我们的标签了：

如果我们忘了给某个提交打标签，又将它发布了，我们可以给它追加标签。
例如，假设我们发布了提交 85fc7e7(上面实例最后一行)，但是那时候忘了给它打标签。 我们现在也可以：
> $ git tag -a v0.9 85fc7e7

如果我们要查看所有标签可以使用以下命令：
> $ git tag

指定标签信息命令：
> git tag -a <tagname> -m "runoob.com标签"

PGP签名标签命令：
> git tag -s <tagname> -m "runoob.com标签"

## 新建标签
Git 使用的标签有两种类型：轻量级的（lightweight）和含附注的（annotated）。

轻量级标签就像是个不会变化的分支，实际上它就是个指向特定提交对象的引用。

而含附注标签，实际上是存储在仓库中的一个独立对象，它有自身的校验和信息，包含着标签的名字，电子邮件地址和日期，以及标签说明，标签本身也允许使用 GNU Privacy Guard (GPG) 来签署或验证。

一般我们都建议使用含附注型的标签，以便保留相关信息；

当然，如果只是临时性加注标签，或者不需要旁注额外信息，用轻量级标签也没问题。

## 2 创建标签
> [root@Git git]# git tag v1.0

## 3 查看已有标签
> [root@Git git]# git tag

## 4 删除标签
> [root@Git git]# git tag -d v1.1

## 5 查看此版本所修改的内容
> [root@Git git]# git show v1.0

# Git 远程仓库(Github)

## 添加远程库
要添加一个新的远程仓库，可以指定一个简单的名字，以便将来引用,命令格式如下：
> git remote add [shortname] [url]

由于你的本地Git仓库和GitHub仓库之间的传输是通过SSH加密的，所以我们需要配置验证信息：

使用以下命令生成SSH Key：
> $ ssh-keygen -t rsa -C "youremail@example.com"
后面的 your_email@youremail.com 改为你在 github 上注册的邮箱，之后会要求确认路径和输入密码，我们这使用默认的一路回车就行。成功的话会在~/下生成.ssh文件夹，进去，打开 id_rsa.pub，复制里面的 key。

为了验证是否成功，输入以下命令：
> $ ssh -T git@github.com

## 查看当前的远程库
要查看当前配置有哪些远程仓库，可以用命令：
> git remote
执行时加上 -v 参数，你还可以看到每个别名的实际链接地址。

## 提取远程仓库
Git 有两个命令用来提取远程仓库的更新。

1、从远程仓库下载新分支与数据：
> git fetch
该命令执行完后需要执行git merge 远程分支到你所在的分支。

2、从远端仓库提取数据并尝试合并到当前分支：
> git merge
该命令就是在执行 git fetch 之后紧接着执行 git merge 远程分支到你所在的任意分支。

假设你配置好了一个远程仓库，并且你想要提取更新的数据，你可以首先执行 git fetch [alias] 告诉 Git 去获取它有你没有的数据，然后你可以执行 git merge [alias]/[branch] 以将服务器上的任何更新（假设有人这时候推送到服务器了）合并到你的当前分支。
> $ git fetch origin
> $ git merge origin/master

## 推送到远程仓库
推送你的新分支与数据到某个远端仓库命令:
> git push [alias] [branch]
以上命令将你的 [branch] 分支推送成为 [alias] 远程仓库上的 [branch] 分支，实例如下。
> $ git push origin master    # 推送到 Github

## 删除远程仓库
删除远程仓库你可以使用命令：
> git remote rm [别名]

# Git 服务器搭建
上一章节中我们远程仓库使用了 Github，Github 公开的项目是免费的，但是如果你不想让其他人看到你的项目就需要收费。

这时我们就需要自己搭建一台Git服务器作为私有仓库使用。

接下来我们将以 Centos 为例搭建 Git 服务器。

## 1、安装Git
> $ yum install curl-devel expat-devel gettext-devel openssl-devel zlib-devel perl-devel
> $ yum install git

接下来我们 创建一个git用户组和用户，用来运行git服务：
> $ groupadd git
> $ useradd git -g git

## 2、创建证书登录
收集所有需要登录的用户的公钥，公钥位于id_rsa.pub文件中，把我们的公钥导入到/home/git/.ssh/authorized_keys文件里，一行一个。

如果没有该文件创建它：

## 3、初始化Git仓库
首先我们选定一个目录作为Git仓库，假定是/home/gitrepo/runoob.git，在/home/gitrepo目录下输入命令：
> $ cd /home
> $ mkdir gitrepo
> $ chown git:git gitrepo/
> $ cd gitrepo

> $ git init --bare runoob.git
>> Initialized empty Git repository in /home/gitrepo/runoob.git/

以上命令Git创建一个空仓库，服务器上的Git仓库通常都以.git结尾。然后，把仓库所属用户改为git：
> $ chown -R git:git runoob.git

## 4、克隆仓库
> $ git clone git@192.168.45.4:/home/gitrepo/runoob.git
>> Cloning into 'runoob'...
>> warning: You appear to have cloned an empty repository.
>> Checking connectivity... done.
192.168.45.4 为 Git 所在服务器 ip ，你需要将其修改为你自己的 Git 服务 ip。

这样我们的 Git 服务器安装就完成。


# git廖雪峰教程小结
# Git教程
## 1、Git简介
### 1.1、Git的诞生
### 1.2、集中式vs分布式
## 2、安装Git
## 3、创建版本库
现在总结一下今天学的两点内容：

初始化一个Git仓库，使用git init命令。

添加文件到Git仓库，分两步：

    使用命令git add <file>，注意，可反复多次使用，添加多个文件；
    使用命令git commit -m <message>，完成。

## 4、时光机穿梭
    要随时掌握工作区的状态，使用git status命令。

    如果git status告诉你有文件被修改过，用git diff可以查看修改内容。
	
### 4.1、版本回退
现在总结一下：

    HEAD指向的版本就是当前版本，因此，Git允许我们在版本的历史之间穿梭，使用命令git reset --hard commit_id。

    穿梭前，用git log可以查看提交历史，以便确定要回退到哪个版本。

    要重返未来，用git reflog查看命令历史，以便确定要回到未来的哪个版本。

### 4.2、工作区和暂存区
暂存区是Git非常重要的概念，弄明白了暂存区，就弄明白了Git的很多操作到底干了什么。

没弄明白暂存区是怎么回事的童鞋，请向上滚动页面，再看一次。

### 4.3、管理修改
现在，你又理解了Git是如何跟踪修改的，每次修改，如果不用git add到暂存区，那就不会加入到commit中。

### 4.4、撤销修改
又到了小结时间。

场景1：当你改乱了工作区某个文件的内容，想直接丢弃工作区的修改时，用命令git checkout -- file。

场景2：当你不但改乱了工作区某个文件的内容，还添加到了暂存区时，想丢弃修改，分两步，第一步用命令git reset HEAD <file>，就回到了场景1，第二步按场景1操作。

场景3：已经提交了不合适的修改到版本库时，想要撤销本次提交，参考版本回退一节，不过前提是没有推送到远程库。

### 4.5、删除文件
命令git rm用于删除一个文件。
如果一个文件已经被提交到版本库，那么你永远不用担心误删，但是要小心，你只能恢复文件到最新版本，你会丢失最近一次提交后你修改的内容。

## 5、远程仓库
“有了远程仓库，妈妈再也不用担心我的硬盘了。”——Git点读机

### 5.1、添加远程库
要关联一个远程库，使用命令
> git remote add origin git@github.com:lw1989live/gitdata.git

关联后，使用命令git push -u origin master第一次推送master分支的所有内容；

此后，每次本地提交后，只要有必要，就可以使用命令git push origin master推送最新修改；

分布式版本系统的最大好处之一是在本地工作完全不需要考虑远程库的存在，也就是有没有联网都可以正常工作，而SVN在没有联网的时候是拒绝干活的！当有网络的时候，再把本地提交推送一下就完成了同步，真是太方便了！

### 5.2、从远程库克隆
要克隆一个仓库，首先必须知道仓库的地址，然后使用git clone命令克隆。
> git clone git@github.com:lw1989live/gitdata.git
Git支持多种协议，包括https，但通过ssh支持的原生git协议速度最快。

## 6、分支管理
### 6.1、创建与合并分支
Git鼓励大量使用分支：

查看分支：git branch

创建分支：git branch <name>

切换分支：git checkout <name>

创建+切换分支：git checkout -b <name>

合并某分支到当前分支：git merge <name>

删除分支：git branch -d <name>

### 6.2、解决冲突
当Git无法自动合并分支时，就必须首先解决冲突。解决冲突后，再提交，合并完成。

解决冲突就是把Git合并失败的文件手动编辑为我们希望的内容，再提交。

用git log --graph命令可以看到分支合并图。

### 6.3、分支管理策略
Git分支十分强大，在团队开发中应该充分应用。

合并分支时，加上--no-ff参数就可以用普通模式合并，合并后的历史有分支，能看出来曾经做过合并，而fast forward合并就看不出来曾经做过合并。

### 6.4、Bug分支
修复bug时，我们会通过创建新的bug分支进行修复，然后合并，最后删除；

当手头工作没有完成时，先把工作现场git stash一下，然后去修复bug，修复后，再git stash pop，回到工作现场。

### 6.5、Feature分支
开发一个新feature，最好新建一个分支；

如果要丢弃一个没有被合并过的分支，可以通过git branch -D <name>强行删除。

### 6.6、多人协作
    查看远程库信息，使用git remote -v；

    本地新建的分支如果不推送到远程，对其他人就是不可见的；

    从本地推送分支，使用git push origin branch-name，如果推送失败，先用git pull抓取远程的新提交；

    在本地创建和远程分支对应的分支，使用
>    git checkout -b branch-name origin/branch-name
，本地和远程分支的名称最好一致；

    建立本地分支和远程分支的关联，使用
>    git branch --set-upstream branch-name origin/branch-name

    从远程抓取分支，使用git pull，如果有冲突，要先处理冲突。

### 6.7、Rebase
    rebase操作可以把本地未push的分叉提交历史整理成直线；

    rebase的目的是使得我们在查看历史提交的变化时更容易，因为分叉的提交需要三方对比。

## 7、标签管理
### 7.1、创建标签
    命令git tag <tagname>用于新建一个标签，默认为HEAD，也可以指定一个commit id；

    命令git tag -a <tagname> -m "blablabla..."可以指定标签信息；

    命令git tag可以查看所有标签。

### 7.2、操作标签
    命令git push origin <tagname>可以推送一个本地标签；

    命令git push origin --tags可以推送全部未推送过的本地标签；

    命令git tag -d <tagname>可以删除一个本地标签；

    命令git push origin :refs/tags/<tagname>可以删除一个远程标签。

## 8、使用GitHub
    在GitHub上，可以任意Fork开源仓库；

    自己拥有Fork后的仓库的读写权限；

    可以推送pull request给官方仓库来贡献代码。

## 9、使用码云
## 10、自定义Git
### 10.1、忽略特殊文件
    忽略某些文件时，需要编写.gitignore；

    .gitignore文件本身要放到版本库里，并且可以对.gitignore做版本管理！
所有配置文件可以直接在线浏览：https://github.com/github/gitignore

### 10.2、配置别名
给Git配置好别名，就可以输入命令时偷个懒。我们鼓励偷懒。

### 10.3、搭建Git服务器
    搭建Git服务器非常简单，通常10分钟即可完成；

    要方便管理公钥，用Gitosis；

    要像SVN那样变态地控制权限，用Gitolite。

## 11、期末总结


presented by TOWER › Version control with Git - made easy
Version control with Git - made easy
30-day free trial available at
www.git-tower.com

GIT CHEAT SHEET
fournova

CREATE
Clone an existing repository
> $ git clone ssh://user@domain.com/repo.git
Create a new local repository
> $ git init

LOCAL CHANGES
Changed files in your working directory
> $ git status
Changes to tracked files
> $ git diff
Add all current changes to the next commit
> $ git add .
Add some changes in <file> to the next commit
> $ git add -p <file>
Commit all local changes in tracked files
> $ git commit -a
Commit previously staged changes
> $ git commit

Change the last commit
Don‘t amend published commits!
> $ git commit --amend

COMMIT HISTORY
Show all commits, starting with newest
> $ git log
Show changes over time for a specific file
> $ git log -p <file>
Who changed what and when in <file>
> $ git blame <file>

BRANCHES & TAGS
List all existing branches
> $ git branch -av
Switch HEAD branch
> $ git checkout <branch>

Create a new branch based
on your current HEAD
> $ git branch <new-branch>

Create a new tracking branch based on
a remote branch
> $ git checkout --track <remote/bran-
ch>
Delete a local branch
> $ git branch -d <branch>
Mark the current commit with a tag
> $ git tag <tag-name>

UPDATE & PUBLISH
List all currently configured remotes
> $ git remote -v
Show information about a remote
> $ git remote show <remote>
Add new remote repository, named <remote>
> $ git remote add <shortname> <url>
Download all changes from <remote>,
but don‘t integrate into HEAD
> $ git fetch <remote>
Download changes and directly
merge/integrate into HEAD
> $ git pull <remote> <branch>
Publish local changes on a remote
> $ git push <remote> <branch>
Delete a branch on the remote
> $ git branch -dr <remote/branch>
Publish your tag s
> $ git push --tags

MERGE & REBASE
Merge <branch> into your current HEAD
> $ git merge <branch>
Rebase your current HEAD onto <branch>
Don‘t rebase published commits!
> $ git rebase <branch>
Abort a rebase
> $ git rebase --abort
Continue a rebase after resolving conflicts
> $ git rebase --continue
Use your configured merge tool to
solve conflicts
> $ git mergetool
Use your editor to manually solve conflicts
and (after resolving) mark file as resolved
> $ git add <resolved-file>
> $ git rm <resolved-file>

UNDO
Discard all local changes in your working
directory
> $ git reset --hard HEAD
Discard local changes in a specific file
> $ git checkout HEAD <file>
Revert a commit (by producing a new commit
with contrary changes)
> $ git revert <commit>
Reset your HEAD pointer to a previous commit
…and discard all changes since then
> $ git reset --hard <commit>
…and preserve all changes as unstaged
changes
> $ git reset <commit>
…and preserve uncommitted local changes
> $ git reset --keep <commit>

BEST PRACTICES
VERSION CONTROL
30-day free trial available at
www.git-tower.com
fournova
Version control with Git - made easy

COMMIT RELATED CHANGES
A commit should be a wrapper for related
changes. For example, fixing two different
bugs should produce two separate commits.
Small commits make it easier for other de-
velopers to understand the changes and roll
them back if something went wrong.
With tools like the staging area and the abi-
lity to stage only parts of a file, Git makes it
easy to create very granular commits.

COMMIT OFTEN
Committing often keeps your commits small
and, again, helps you commit only related
changes. Moreover, it allows you to share your
code more frequently with others. That way
it‘s easier for everyone to integrate changes
regularly and avoid having merge conflicts.
Having few large commits and sharing them
rarely, in contrast, makes it hard to solve
conflicts.

DON‘T COMMIT HALF-DONE WORK
You should only commit code when it‘s
completed. This doesn‘t mean you have
to complete a whole, large feature before
committing. Quite the contrary: split the
feature‘s implementation into logical chunks
and remember to commit early and often.
But don‘t commit just to have something in
the repository before leaving the office at the
end of the day. If you‘re tempted to commit
just because you need a clean working copy
(to check out a branch, pull in changes, etc.)
consider using Git‘s «Stash» feature instead.

TEST CODE BEFORE YOU COMMIT
Resist the temptation to commit some-
thing that you «think» is completed. Test it
thoroughly to make sure it really is completed
and has no side effects (as far as one can tell).
While committing half-baked things in your
local repository only requires you to forgive
yourself, having your code tested is even more
important when it comes to pushing/sharing
your code with others.

WRITE GOOD COMMIT MESSAGES
Begin your message with a short summary of
your changes (up to 50 characters as a gui-
deline). Separate it from the following body
by including a blank line. The body of your
message should provide detailed answers to
the following questions:
› What was the motivation for the change?
› How does it differ from the previous
implementation?
Use the imperative, present tense («change»,
not «changed» or «changes») to be consistent
with generated messages from commands
like git merge.

VERSION CONTROL IS NOT
A BACKUP SYSTEM
Having your files backed up on a remote
server is a nice side effect of having a version
control system. But you should not use your
VCS like it was a backup system. When doing
version control, you should pay attention to
committing semantically (see «related chan-
ges») - you shouldn‘t just cram in files.

USE BRANCHES
Branching is one of Git‘s most powerful
features - and this is not by accident: quick
and easy branching was a central requirement
from day one. Branches are the perfect tool
to help you avoid mixing up different lines
of development. You should use branches
extensively in your development workflows:
for new features, bug fixes, ideas…

AGREE ON A WORKFLOW
Git lets you pick from a lot of different work-
flows: long-running branches, topic bran-
ches, merge or rebase, git-flow… Which one
you choose depends on a couple of factors:
your project, your overall development and
deployment workflows and (maybe most
importantly) on your and your teammates‘
personal preferences. However you choose to
work, just make sure to agree on a common
workflow that everyone follows.

HELP & DOCUMENTATION
Get help on the command line
> $ git help <command>

FREE ONLINE RESOURCES
http://www.git-tower.com/learn
http://rogerdudler.github.io/git-guide/
http://www.git-scm.org/
