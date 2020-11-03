# linux读书笔记
Linux 命令大全
1、文件管理
cat   chattr  chgrp   chmod
chown   cksum   cmp   diff
diffstat  file  find  git
gitview   indent  cut   ln
less  locate  lsattr  mattrib
mc  mdel  mdir  mktemp
more  mmove   mread   mren
mtools  mtoolstest  mv  od
paste   patch   rcp   rm
slocate   split   tee   tmpwatch
touch   umask   which   cp
whereis   mcopy   mshowfat  rhmask
scp   awk   read  updatedb
2、文档编辑
col   colrm   comm  csplit
ed  egrep   ex  fgrep
fmt   fold  grep  ispell
jed   joe   join  look
mtype   pico  rgrep   sed
sort  spell   tr  expr
uniq  wc  let    
3、文件传输
lprm  lpr   lpq   lpd
bye   ftp   uuto  uupick
uucp  uucico  tftp  ncftp
ftpshut   ftpwho  ftpcount   
4、磁盘管理
cd  df  dirs  du
edquota   eject   mcd   mdeltree
mdu   mkdir   mlabel  mmd
mrd   mzip  pwd   quota
mount   mmount  rmdir   rmt
stat  tree  umount  ls
quotacheck  quotaoff  lndir   repquota
quotaon            
5、磁盘维护
badblocks   cfdisk  dd  e2fsck
ext2ed  fsck  fsck.minix  fsconf
fdformat  hdparm  mformat   mkbootdisk
mkdosfs   mke2fs  mkfs.ext2   mkfs.msdos
mkinitrd  mkisofs   mkswap  mpartition
swapon  symlinks  sync  mbadblocks
mkfs.minix  fsck.ext2   fdisk   losetup
mkfs  sfdisk  swapoff    
6、网络通讯
apachectl   arpwatch  dip   getty
mingetty  uux   telnet  uulog
uustat  ppp-off   netconfig   nc
httpd   ifconfig  minicom   mesg
dnsconf   wall  netstat   ping
pppstats  samba   setserial   talk
traceroute  tty   newaliases  uuname
netconf   write   statserial  efax
pppsetup  tcpdump   ytalk   cu
smbd  testparm  smbclient   shapecfg
7、系统管理
adduser   chfn  useradd   date
exit  finger  fwhios  sleep
suspend   groupdel  groupmod  halt
kill  last  lastb   login
logname   logout  ps  nice
procinfo  top   pstree  reboot
rlogin  rsh   sliplogin   screen
shutdown  rwho  sudo  gitps
swatch  tload   logrotate   uname
chsh  userconf  userdel   usermod
vlock   who   whoami  whois
newgrp  renice  su  skill
w   id  groupadd  free
8、系统设置
reset   clear   alias   dircolors
aumix   bind  chroot  clock
crontab   declare   depmod  dmesg
enable  eval  export  pwunconv
grpconv   rpm   insmod  kbdconfig
lilo  liloconfig  lsmod   minfo
set   modprobe  ntsysv  mouseconfig
passwd  pwconv  rdate   resize
rmmod   grpunconv   modinfo   time
setup   sndconfig   setenv  setconsole
timeconfig  ulimit  unset   chkconfig
apmd  hwclock   mkkickstart   fbset
unalias   SVGATextMode  gpasswd    
9、备份压缩
ar  bunzip2   bzip2   bzip2recover
gunzip  unarj   compress  cpio
dump  uuencode  gzexe   gzip
lha   restore   tar   uudecode
unzip   zip   zipinfo    
10、设备管理
setleds   loadkeys  rdev  dumpkeys
MAKEDEV   poweroff       
其他命令
    Linux bc 命令
    Linux tail 命令
    Linux head 命令
    Linux xargs 命令
    Linux ip 命令
    Linux nohup 命令
    Linux killall 命令
    Linux pkill 命令

# Linux 命令大全
## 1、文件管理

chown
 Linux chown（英文全拼：change ownerp）命令用于设置文件所有者和文件关联组的命令。
Linux/Unix 是多人多工操作系统，所有的文件皆有拥有者。利用 chown 将指定文件的拥有者改为指定的用户或组，用户可以是用户名或者用户 ID，组可以是组名或者组 ID，文件是以空格分开的要改变权限的文件列表，支持通配符。 。
chown 需要超级用户 root 的权限才能执行此命令。
只有超级用户和属于组的文件所有者才能变更文件关联组。非超级用户如需要设置关联组可能需要使用 chgrp 命令。
使用权限 : root
语法
chown [-cfhvR] [--help] [--version] user[:group] file...
参数 :
    user : 新的文件拥有者的使用者 ID
    group : 新的文件拥有者的使用者组(group)
    -c : 显示更改的部分的信息
    -f : 忽略错误信息
    -h :修复符号链接
    -v : 显示详细的处理信息
    -R : 处理指定目录以及其子目录下的所有文件
    --help : 显示辅助说明
    --version : 显示版本

chgrp
Linux chgrp（英文全拼：change group）命令用于变更文件或目录的所属群组。
与 chown 命令不同，chgrp 允许普通用户改变文件所属的组，只要该用户是该组的一员。
在 UNIX 系统家族里，文件或目录权限的掌控以拥有者及所属群组来管理。您可以使用 chgrp 指令去变更文件与目录的所属群组，设置方式采用群组名称或群组识别码皆可。
语法
chgrp [-cfhRv][--help][--version][所属群组][文件或目录...] 或 chgrp [-cfhRv][--help][--reference=<参考文件或目录>][--version][文件或目录...]
参数说明
　　-c或--changes 效果类似"-v"参数，但仅回报更改的部分。
　　-f或--quiet或--silent 　不显示错误信息。
　　-h或--no-dereference 　只对符号连接的文件作修改，而不更动其他任何相关文件。
　　-R或--recursive 　递归处理，将指定目录下的所有文件及子目录一并处理。
　　-v或--verbose 　显示指令执行过程。
　　--help 　在线帮助。
　　--reference=<参考文件或目录> 　把指定文件或目录的所属群组全部设成和参考文件或目录的所属群组相同。
　　--version 　显示版本信息。

chmod
Linux chmod（英文全拼：change mode）命令是控制用户对文件的权限的命令
Linux/Unix 的文件调用权限分为三级 : 文件所有者（Owner）、用户组（Group）、其它用户（Other Users）。
只有文件所有者和超级用户可以修改文件或目录的权限。可以使用绝对模式（八进制数字模式），符号模式指定文件的权限。
使用权限 : 所有使用者
语法
chmod [-cfvR] [--help] [--version] mode file...
参数说明
mode : 权限设定字串，格式如下 :
[ugoa...][[+-=][rwxX]...][,...]
其中：
    u 表示该文件的拥有者，g 表示与该文件的拥有者属于同一个群体(group)者，o 表示其他以外的人，a 表示这三者皆是。
    + 表示增加权限、- 表示取消权限、= 表示唯一设定权限。
    r 表示可读取，w 表示可写入，x 表示可执行，X 表示只有当该文件是个子目录或者该文件已经被设定过为可执行。
其他参数说明：
    -c : 若该文件权限确实已经更改，才显示其更改动作
    -f : 若该文件权限无法被更改也不要显示错误讯息
    -v : 显示权限变更的详细资料
    -R : 对目前目录下的所有文件与子目录进行相同的权限变更(即以递归的方式逐个变更)
    --help : 显示辅助说明
    --version : 显示版本

符号模式
使用符号模式可以设置多个项目：who（用户类型），operator（操作符）和 permission（权限），每个项目的设置可以用逗号隔开。 命令 chmod 将修改 who 指定的用户类型对文件的访问权限，用户类型由一个或者多个字母在 who 的位置来说明，如 who 的符号模式表所示:
who   用户类型  说明
u   user  文件所有者
g   group   文件所有者所在组
o   others  所有其他用户
a   all   所用用户, 相当于 ugo

operator 的符号模式表:
Operator  说明
+   为指定的用户类型增加权限
-   去除指定用户类型的权限
=   设置指定用户权限的设置，即将用户类型的所有权限重新设置

permission 的符号模式表:
模式  名字  说明
r   读   设置为可读权限
w   写   设置为可写权限
x   执行权限  设置为可执行权限
X   特殊执行权限  只有当文件为目录文件，或者其他类型的用户有可执行权限时，才将文件权限设置可执行
s   setuid/gid  当文件被执行时，根据who参数指定的用户类型设置文件的setuid或者setgid权限
t   粘贴位   设置粘贴位，只有超级用户可以设置该位，只有文件所有者u可以使用该位

八进制语法

chmod命令可以使用八进制数来指定权限。文件或目录的权限位是由9个权限位来控制，每三位为一组，它们分别是文件所有者（User）的读、写、执行，用户组（Group）的读、写、执行以及其它用户（Other）的读、写、执行。历史上，文件权限被放在一个比特掩码中，掩码中指定的比特位设为1，用来说明一个类具有相应的优先级。
   权限            rwx   二进制
7   读 + 写 + 执行    rwx   111
6   读 + 写         rw-   110
5   读 + 执行        r-x   101
4   只读            r--   100
3   写 + 执行        -wx   011
2   只写            -w-   010
1   只执行           --x   001
0   无              ---   000

例如， 765 将这样解释：
    所有者的权限用数字表达：属主的那三个权限位的数字加起来的总和。如 rwx ，也就是 4+2+1 ，应该是 7。
    用户组的权限用数字表达：属组的那个权限位数字的相加的总和。如 rw- ，也就是 4+2+0 ，应该是 6。
    其它用户的权限数字表达：其它用户权限位的数字相加的总和。如 r-x ，也就是 4+0+1 ，应该是 5。

chattr
Linux chattr命令用于改变文件属性。
这项指令可改变存放在ext2文件系统上的文件或目录属性，这些属性共有以下8种模式：
    a：让文件或目录仅供附加用途。
    b：不更新文件或目录的最后存取时间。
    c：将文件或目录压缩后存放。
    d：将文件或目录排除在倾倒操作之外。
    i：不得任意更动文件或目录。
    s：保密性删除文件或目录。
    S：即时更新文件或目录。
    u：预防意外删除。
语法
chattr [-RV][-v<版本编号>][+/-/=<属性>][文件或目录...]
参数
　　-R 递归处理，将指定目录下的所有文件及子目录一并处理。
　　-v<版本编号> 设置文件或目录版本。
　　-V 显示指令执行过程。
　　+<属性> 开启文件或目录的该项属性。
　　-<属性> 关闭文件或目录的该项属性。
　　=<属性> 指定文件或目录的该项属性。

lsattr
Linux lsattr命令用于显示文件属性。
用chattr执行改变文件或目录的属性，可执行lsattr指令查询其属性。
语法
lsattr [-adlRvV][文件或目录...]
参数：
    -a 　显示所有文件和目录，包括以"."为名称开头字符的额外内建，现行目录"."与上层目录".."。
    -d 　显示，目录名称，而非其内容。
    -l 　此参数目前没有任何作用。
    -R 　递归处理，将指定目录下的所有文件及子目录一并处理。
    -v 　显示文件或目录版本。
    -V 　显示版本信息。

umask
Linux umask命令指定在建立文件时预设的权限掩码。
umask可用来设定[权限掩码]。[权限掩码]是由3个八进制的数字所组成，将现有的存取权限减掉权限掩码后，即可产生建立文件时预设的权限。
语法
umask [-S][权限掩码]
参数说明：
-S 　以文字的方式来表示权限掩码。

cat
 cat（英文全拼：concatenate）命令用于连接文件并打印到标准输出设备上。
使用权限
所有使用者
语法格式
cat [-AbeEnstTuv] [--help] [--version] fileName
参数说明：
-n 或 --number：由 1 开始对所有输出的行数编号。
-b 或 --number-nonblank：和 -n 相似，只不过对于空白行不编号。
-s 或 --squeeze-blank：当遇到有连续两行以上的空白行，就代换为一行的空白行。
-v 或 --show-nonprinting：使用 ^ 和 M- 符号，除了 LFD 和 TAB 之外。
-E 或 --show-ends : 在每行结束处显示 $。
-T 或 --show-tabs: 将 TAB 字符显示为 ^I。
-A, --show-all：等价于 -vET。
-e：等价于"-vE"选项；
-t：等价于"-vT"选项；

more
Linux more 命令类似 cat ，不过会以一页一页的形式显示，更方便使用者逐页阅读，而最基本的指令就是按空白键（space）就往下一页显示，按 b 键就会往回（back）一页显示，而且还有搜寻字串的功能（与 vi 相似），使用中的说明文件，请按 h 。
语法
more [-dlfpcsu] [-num] [+/pattern] [+linenum] [fileNames..]
参数：
    -num 一次显示的行数
    -d 提示使用者，在画面下方显示 [Press space to continue, 'q' to quit.] ，如果使用者按错键，则会显示 [Press 'h' for instructions.] 而不是 '哔' 声
    -l 取消遇见特殊字元 ^L（送纸字元）时会暂停的功能
    -f 计算行数时，以实际上的行数，而非自动换行过后的行数（有些单行字数太长的会被扩展为两行或两行以上）
    -p 不以卷动的方式显示每一页，而是先清除萤幕后再显示内容
    -c 跟 -p 相似，不同的是先显示内容再清除其他旧资料
    -s 当遇到有连续两行以上的空白行，就代换为一行的空白行
    -u 不显示下引号 （根据环境变数 TERM 指定的 terminal 而有所不同）
    +/pattern 在每个文档显示前搜寻该字串（pattern），然后从该字串之后开始显示
    +num 从第 num 行开始显示
    fileNames 欲显示内容的文档，可为复数个数

less
less 与 more 类似，但使用 less 可以随意浏览文件，而 more 仅能向前移动，却不能向后移动，而且 less 在查看之前不会加载整个文件。
语法
less [参数] 文件 
参数说明：
    -b <缓冲区大小> 设置缓冲区的大小
    -e 当文件显示结束后，自动离开
    -f 强迫打开特殊文件，例如外围设备代号、目录和二进制文件
    -g 只标志最后搜索的关键词
    -i 忽略搜索时的大小写
    -m 显示类似more命令的百分比
    -N 显示每行的行号
    -o <文件名> 将less 输出的内容在指定文件中保存起来
    -Q 不使用警告音
    -s 显示连续空行为一行
    -S 行过长时间将超出部分舍弃
    -x <数字> 将"tab"键显示为规定的数字空格

    /字符串：向下搜索"字符串"的功能
    ?字符串：向上搜索"字符串"的功能
    n：重复前一个搜索（与 / 或 ? 有关）
    N：反向重复前一个搜索（与 / 或 ? 有关）
    b 向上翻一页
    d 向后翻半页
    h 显示帮助界面
    Q 退出less 命令
    u 向前滚动半页
    y 向前滚动一行
    空格键 滚动一页
    回车键 滚动一行
    [pagedown]： 向下翻动一页
    [pageup]： 向上翻动一页

od
Linux od命令用于输出文件内容。
od指令会读取所给予的文件的内容，并将其内容以八进制字码呈现出来。
语法
od [-abcdfhilovx][-A <字码基数>][-j <字符数目>][-N <字符数目>][-s <字符串字符数>][-t <输出格式>][-w <每列字符数>][--help][--version][文件...]
参数：
    -a 　此参数的效果和同时指定"-ta"参数相同。
    -A<字码基数> 　选择要以何种基数计算字码。
    -b 　此参数的效果和同时指定"-toC"参数相同。
    -c 　此参数的效果和同时指定"-tC"参数相同。
    -d 　此参数的效果和同时指定"-tu2"参数相同。
    -f 　此参数的效果和同时指定"-tfF"参数相同。
    -h 　此参数的效果和同时指定"-tx2"参数相同。
    -i 　此参数的效果和同时指定"-td2"参数相同。
    -j<字符数目>或--skip-bytes=<字符数目> 　略过设置的字符数目。
    -l 　此参数的效果和同时指定"-td4"参数相同。
    -N<字符数目>或--read-bytes=<字符数目> 　到设置的字符数目为止。
    -o 　此参数的效果和同时指定"-to2"参数相同。
    -s<字符串字符数>或--strings=<字符串字符数> 　只显示符合指定的字符数目的字符串。
    -t<输出格式>或--format=<输出格式> 　设置输出格式。
    -v或--output-duplicates 　输出时不省略重复的数据。
    -w<每列字符数>或--width=<每列字符数> 　设置每列的最大字符数。
    -x 　此参数的效果和同时指定"-h"参数相同。
    --help 　在线帮助。
    --version 　显示版本信息。

file
Linux file命令用于辨识文件类型。
通过file指令，我们得以辨识该文件的类型。
语法
file [-bcLvz][-f <名称文件>][-m <魔法数字文件>...][文件或目录...]
参数：
    -b 　列出辨识结果时，不显示文件名称。
    -c 　详细显示指令执行过程，便于排错或分析程序执行的情形。
    -f<名称文件> 　指定名称文件，其内容有一个或多个文件名称时，让file依序辨识这些文件，格式为每列一个文件名称。
    -L 　直接显示符号连接所指向的文件的类别。
    -m<魔法数字文件> 　指定魔法数字文件。
    -v 　显示版本信息。
    -z 　尝试去解读压缩文件的内容。
    [文件或目录...] 要确定类型的文件列表，多个文件之间使用空格分开，可以使用shell通配符匹配多个文件。

cksum
Linux cksum命令用于检查文件的CRC是否正确。确保文件从一个系统传输到另一个系统的过程中不被损坏。
CRC是一种排错检查方式，该校验法的标准由CCITT所指定，至少可检测到99.998%的已知错误。
指定文件交由指令"cksum"进行校验后，该指令会返回校验结果供用户核对文件是否正确无误。若不指定任何文件名称或是所给予的文件名为"-"，则指令"cksum"会从标准输入设备中读取数据。
语法
cksum [--help][--version][文件...]
参数：
    --help：在线帮助。
    --version：显示版本信息。
    文件…:需要进行检查的文件路径

cmp
Linux cmp命令用于比较两个文件是否有差异。
当相互比较的两个文件完全一样时，则该指令不会显示任何信息。若发现有所差异，预设会标示出第一个不同之处的字符和列数编号。若不指定任何文件名称或是所给予的文件名为"-"，则cmp指令会从标准输入设备读取数据。
语法
cmp [-clsv][-i <字符数目>][--help][第一个文件][第二个文件]
参数：
    -c或--print-chars 　除了标明差异处的十进制字码之外，一并显示该字符所对应字符。
    -i<字符数目>或--ignore-initial=<字符数目> 　指定一个数目。
    -l或--verbose 　标示出所有不一样的地方。
    -s或--quiet或--silent 　不显示错误信息。
    -v或--version 　显示版本信息。
    --help 　在线帮助。

diff
Linux diff命令用于比较文件的差异。
diff以逐行的方式，比较文本文件的异同处。如果指定要比较目录，则diff会比较目录中相同文件名的文件，但不会比较其中子目录。
语法
diff [-abBcdefHilnNpPqrstTuvwy][-<行数>][-C <行数>][-D <巨集名称>][-I <字符或字符串>][-S <文件>][-W <宽度>][-x <文件或目录>][-X <文件>][--help][--left-column][--suppress-common-line][文件或目录1][文件或目录2]
参数：
-<行数> 　指定要显示多少行的文本。此参数必须与-c或-u参数一并使用。
-a或--text 　diff预设只会逐行比较文本文件。
-b或--ignore-space-change 　不检查空格字符的不同。
    -B或--ignore-blank-lines 　不检查空白行。
    -c 　显示全部内文，并标出不同之处。
    -C<行数>或--context<行数> 　与执行"-c-<行数>"指令相同。
    -d或--minimal 　使用不同的演算法，以较小的单位来做比较。
    -D<巨集名称>或ifdef<巨集名称> 　此参数的输出格式可用于前置处理器巨集。
    -e或--ed 　此参数的输出格式可用于ed的script文件。
    -f或-forward-ed 　输出的格式类似ed的script文件，但按照原来文件的顺序来显示不同处。
    -H或--speed-large-files 　比较大文件时，可加快速度。
    -l<字符或字符串>或--ignore-matching-lines<字符或字符串> 　若两个文件在某几行有所不同，而这几行同时都包含了选项中指定的字符或字符串，则不显示这两个文件的差异。
    -i或--ignore-case 　不检查大小写的不同。
    -l或--paginate 　将结果交由pr程序来分页。
    -n或--rcs 　将比较结果以RCS的格式来显示。
    -N或--new-file 　在比较目录时，若文件A仅出现在某个目录中，预设会显示：
    Only in目录：文件A若使用-N参数，则diff会将文件A与一个空白的文件比较。
    -p 　若比较的文件为C语言的程序码文件时，显示差异所在的函数名称。
    -P或--unidirectional-new-file 　与-N类似，但只有当第二个目录包含了一个第一个目录所没有的文件时，才会将这个文件与空白的文件做比较。
    -q或--brief 　仅显示有无差异，不显示详细的信息。
    -r或--recursive 　比较子目录中的文件。
    -s或--report-identical-files 　若没有发现任何差异，仍然显示信息。
    -S<文件>或--starting-file<文件> 　在比较目录时，从指定的文件开始比较。
    -t或--expand-tabs 　在输出时，将tab字符展开。
    -T或--initial-tab 　在每行前面加上tab字符以便对齐。
    -u,-U<列数>或--unified=<列数> 　以合并的方式来显示文件内容的不同。
    -v或--version 　显示版本信息。
    -w或--ignore-all-space 　忽略全部的空格字符。
    -W<宽度>或--width<宽度> 　在使用-y参数时，指定栏宽。
    -x<文件名或目录>或--exclude<文件名或目录> 　不比较选项中所指定的文件或目录。
    -X<文件>或--exclude-from<文件> 　您可以将文件或目录类型存成文本文件，然后在=<文件>中指定此文本文件。
    -y或--side-by-side 　以并列的方式显示文件的异同之处。
    --help 　显示帮助。
    --left-column 　在使用-y参数时，若两个文件某一行内容相同，则仅在左侧的栏位显示该行内容。
    --suppress-common-lines 　在使用-y参数时，仅显示不同之处。

diffstat
Linux diffstat命令根据diff的比较结果，显示统计数字。
diffstat读取diff的输出结果，然后统计各文件的插入，删除，修改等差异计量。
语法
diff [-wV][-n <文件名长度>][-p <文件名长度>]
参数：
    -n<文件名长度> 　指定文件名长度，指定的长度必须大于或等于所有文件中最长的文件名。
    -p<文件名长度> 　与-n参数相同，但此处的<文件名长度>包括了文件的路径。
    -w 　指定输出时栏位的宽度。
    -V 　显示版本信息。

which
Linux which命令用于查找文件。
which指令会在环境变量$PATH设置的目录里查找符合条件的文件。
语法
which [文件...]
参数：
    -n<文件名长度> 　指定文件名长度，指定的长度必须大于或等于所有文件中最长的文件名。
    -p<文件名长度> 　与-n参数相同，但此处的<文件名长度>包括了文件的路径。
    -w 　指定输出时栏位的宽度。
    -V 　显示版本信息。

whereis
Linux whereis命令用于查找文件。
该指令会在特定目录中查找符合条件的文件。这些文件应属于原始代码、二进制文件，或是帮助文件。
该指令只能用于查找二进制文件、源代码文件和man手册页，一般文件的定位需使用locate命令。
语法
whereis [-bfmsu][-B <目录>...][-M <目录>...][-S <目录>...][文件...]
参数：
-b 　只查找二进制文件。
-B<目录> 　只在设置的目录下查找二进制文件。
-f 　不显示文件名前的路径名称。
-m 　只查找说明文件。
-M<目录> 　只在设置的目录下查找说明文件。
-s 　只查找原始代码文件。
-S<目录> 　只在设置的目录下查找原始代码文件。
-u 　查找不包含指定类型的文件。

find
Linux find 命令用来在指定目录下查找文件。任何位于参数之前的字符串都将被视为欲查找的目录名。如果使用该命令时，不设置任何参数，则 find 命令将在当前目录下查找子目录与文件。并且将查找到的子目录和文件全部进行显示。
语法
find   path   -option   [   -print ]   [ -exec   -ok   command ]   {} \;
参数说明 :
find 根据下列规则判断 path 和 expression，在命令列上第一个 - ( ) , ! 之前的部份为 path，之后的是 expression。如果 path 是空字串则使用目前路径，如果 expression 是空字串则使用 -print 为预设 expression。
expression 中可使用的选项有二三十个之多，在此只介绍最常用的部份。
-mount, -xdev : 只检查和指定目录在同一个文件系统下的文件，避免列出其它文件系统中的文件
-amin n : 在过去 n 分钟内被读取过
-anewer file : 比文件 file 更晚被读取过的文件
-atime n : 在过去n天内被读取过的文件
-cmin n : 在过去 n 分钟内被修改过
-cnewer file :比文件 file 更新的文件
-ctime n : 在过去n天内被修改过的文件
-empty : 空的文件-gid n or -group name : gid 是 n 或是 group 名称是 name
-ipath p, -path p : 路径名称符合 p 的文件，ipath 会忽略大小写
-name name, -iname name : 文件名称符合 name 的文件。iname 会忽略大小写
-size n : 文件大小 是 n 单位，b 代表 512 位元组的区块，c 表示字元数，k 表示 kilo bytes，w 是二个位元组。
-type c : 文件类型是 c 的文件。
      d: 目录
      c: 字型装置文件
      b: 区块装置文件
      p: 具名贮列
      f: 一般文件
      l: 符号连结
      s: socket
-pid n : process id 是 n 的文件
你可以使用 ( ) 将运算式分隔，并使用下列运算。
exp1 -and exp2
! expr
-not expr
exp1 -or exp2
exp1, exp2

locate
Linux locate命令用于查找符合条件的文档，他会去保存文档和目录名称的数据库内，查找合乎范本样式条件的文档或目录。
一般情况我们只需要输入 locate your_file_name 即可查找指定文件。
语法
locate [-d ][--help][--version][范本样式...]
参数：
    -b, --basename -- 仅匹配路径名的基本名称
    -c, --count -- 只输出找到的数量
    -d, --database DBPATH -- 使用 DBPATH 指定的数据库，而不是默认数据库 /var/lib/mlocate/mlocate.db
    -e, --existing -- 仅打印当前现有文件的条目
    -1 -- 如果 是 1．则启动安全模式。在安全模式下，使用者不会看到权限无法看到 的档案。这会始速度减慢，因为 locate 必须至实际的档案系统中取得档案的 权限资料。
    -0, --null -- 在输出上带有NUL的单独条目
    -S, --statistics -- 不搜索条目，打印有关每个数据库的统计信息
    -q -- 安静模式，不会显示任何错误讯息。
    -P, --nofollow, -H -- 检查文件存在时不要遵循尾随的符号链接
    -l, --limit, -n LIMIT -- 将输出（或计数）限制为LIMIT个条目
    -n -- 至多显示 n个输出。
    -m, --mmap -- 被忽略，为了向后兼容
    -r, --regexp REGEXP -- 使用基本正则表达式
    --regex -- 使用扩展正则表达式
    -q, --quiet -- 安静模式，不会显示任何错误讯息
    -s, --stdio -- 被忽略，为了向后兼容
    -o -- 指定资料库存的名称。
    -h, --help -- 显示帮助
    -i, --ignore-case -- 忽略大小写
    -V, --version -- 显示版本信息 


slocate
Linux slocate命令查找文件或目录。
slocate本身具有一个数据库，里面存放了系统中文件与目录的相关信息。
语法
slocate [-u][--help][--version][-d <目录>][查找的文件]
参数：
    -d<目录>或--database=<目录> 　指定数据库所在的目录。
    -u 　更新slocate数据库。
    --help 　显示帮助。
    --version 　显示版本信息。

updatedb
updatedb 命令用来创建或更新 slocate/locate 命令所必需的数据库文件。
updatedb 命令的执行过程较长，因为在执行时它会遍历整个系统的目录树，并将所有的文件信息写入 slocate/locate 数据库文件中。
注意：slocate 本身具有一个数据库，里面存放了系统中文件与目录的相关信息。
语法
updatedb(选项)
参数
    -o<文件>：忽略默认的数据库文件，使用指定的slocate数据库文件；
    -U<目录>：更新指定目录的slocate数据库；
    -v：显示执行的详细过程。

mktemp
Linux mktemp命令用于建立暂存文件。
mktemp建立的一个暂存文件，供shell script使用。
语法
mktemp [-qu][文件名参数]
参数：
    -q 　执行时若发生错误，不会显示任何信息。
    -u 　暂存文件会在mktemp结束前先行删除。
    [文件名参数] 　文件名参数必须是以"自订名称.XXXXXX"的格式。

mv
Linux mv（英文全拼：move file）命令用来为文件或目录改名、或将文件或目录移入其它位置。
语法
mv [options] source dest
mv [options] source... directory
参数说明：
    -b: 当目标文件或目录存在时，在执行覆盖前，会为其创建一个备份。
    -i: 如果指定移动的源目录或文件与目标的目录或文件同名，则会先询问是否覆盖旧文件，输入 y 表示直接覆盖，输入 n 表示取消该操作。
    -f: 如果指定移动的源目录或文件与目标的目录或文件同名，不会询问，直接覆盖旧文件。
    -n: 不要覆盖任何已存在的文件或目录。
    -u：当源文件比目标文件新或者目标文件不存在时，才执行移动操作。

mv 参数设置与运行结果
命令格式                                        运行结果
mv source_file(文件) dest_file(文件)            将源文件名 source_file 改为目标文件名 dest_file
mv source_file(文件) dest_directory(目录)       将文件 source_file 移动到目标目录 dest_directory 中
mv source_directory(目录) dest_directory(目录)  目录名 dest_directory 已存在，将 source_directory 移动到目录名 dest_directory 中；目录名 dest_directory 不存在则 source_directory 改名为目录名 dest_directory
mv source_directory(目录) dest_file(文件)       出错

paste
Linux paste 命令用于合并文件的列。
paste 指令会把每个文件以列对列的方式，一列列地加以合并。
语法
paste [-s][-d <间隔字符>][--help][--version][文件...]
参数：
    -d<间隔字符>或--delimiters=<间隔字符> 　用指定的间隔字符取代跳格字符。
    -s或--serial 　串列进行而非平行处理。
    --help 　在线帮助。
    --version 　显示帮助信息。
    [文件…] 指定操作的文件路径


patch
Linux patch命令用于修补文件。
patch指令让用户利用设置修补文件的方式，修改，更新原始文件。倘若一次仅修改一个文件，可直接在指令列中下达指令依序执行。如果配合修补文件的方式则能一次修补大批文件，这也是Linux系统核心的升级方法之一。
语法
patch [-bceEflnNRstTuvZ][-B <备份字首字符串>][-d <工作目录>][-D <标示符号>][-F <监别列数>][-g <控制数值>][-i <修补文件>][-o <输出文件>][-p <剥离层级>][-r <拒绝文件>][-V <备份方式>][-Y <备份字首字符串>][-z <备份字尾字符串>][--backup-if -mismatch][--binary][--help][--nobackup-if-mismatch][--verbose][原始文件 <修补文件>] 或 path [-p <剥离层级>] < [修补文件]
参数：
    -b或--backup 　备份每一个原始文件。
    -B<备份字首字符串>或--prefix=<备份字首字符串> 　设置文件备份时，附加在文件名称前面的字首字符串，该字符串可以是路径名称。
    -c或--context 　把修补数据解译成关联性的差异。
    -d<工作目录>或--directory=<工作目录> 　设置工作目录。
    -D<标示符号>或--ifdef=<标示符号> 　用指定的符号把改变的地方标示出来。
    -e或--ed 　把修补数据解译成ed指令可用的叙述文件。
    -E或--remove-empty-files 　若修补过后输出的文件其内容是一片空白，则移除该文件。
    -f或--force 　此参数的效果和指定"-t"参数类似，但会假设修补数据的版本为新　版本。
    -F<监别列数>或--fuzz<监别列数> 　设置监别列数的最大值。
    -g<控制数值>或--get=<控制数值> 　设置以RSC或SCCS控制修补作业。
    -i<修补文件>或--input=<修补文件> 　读取指定的修补文件。
    -l或--ignore-whitespace 　忽略修补数据与输入数据的跳格，空格字符。
    -n或--normal 　把修补数据解译成一般性的差异。
    -N或--forward 　忽略修补的数据较原始文件的版本更旧，或该版本的修补数据已使　用过。
    -o<输出文件>或--output=<输出文件> 　设置输出文件的名称，修补过的文件会以该名称存放。
    -p<剥离层级>或--strip=<剥离层级> 　设置欲剥离几层路径名称。
    -f<拒绝文件>或--reject-file=<拒绝文件> 　设置保存拒绝修补相关信息的文件名称，预设的文件名称为.rej。
    -R或--reverse 　假设修补数据是由新旧文件交换位置而产生。
    -s或--quiet或--silent 　不显示指令执行过程，除非发生错误。
    -t或--batch 　自动略过错误，不询问任何问题。
    -T或--set-time 　此参数的效果和指定"-Z"参数类似，但以本地时间为主。
    -u或--unified 　把修补数据解译成一致化的差异。
    -v或--version 　显示版本信息。
    -V<备份方式>或--version-control=<备份方式> 　用"-b"参数备份目标文件后，备份文件的字尾会被加上一个备份字符串，这个字符串不仅可用"-z"参数变更，当使用"-V"参数指定不同备份方式时，也会产生不同字尾的备份字符串。
    -Y<备份字首字符串>或--basename-prefix=--<备份字首字符串> 　设置文件备份时，附加在文件基本名称开头的字首字符串。
    -z<备份字尾字符串>或--suffix=<备份字尾字符串> 　此参数的效果和指定"-B"参数类似，差别在于修补作业使用的路径与文件名若为src/linux/fs/super.c，加上"backup/"字符串后，文件super.c会备份于/src/linux/fs/backup目录里。
    -Z或--set-utc 　把修补过的文件更改，存取时间设为UTC。
    --backup-if-mismatch 　在修补数据不完全吻合，且没有刻意指定要备份文件时，才备份文件。
    --binary 　以二进制模式读写数据，而不通过标准输出设备。
    --help 　在线帮助。
    --nobackup-if-mismatch 　在修补数据不完全吻合，且没有刻意指定要备份文件时，不要备份文件。
    --verbose 　详细显示指令的执行过程。


cp
Linux cp（英文全拼：copy file）命令主要用于复制文件或目录。
语法
cp [options] source dest
或
cp [options] source... directory
参数说明：
    -a：此选项通常在复制目录时使用，它保留链接、文件属性，并复制目录下的所有内容。其作用等于dpR参数组合。
    -d：复制时保留链接。这里所说的链接相当于Windows系统中的快捷方式。
    -f：覆盖已经存在的目标文件而不给出提示。
    -i：与-f选项相反，在覆盖目标文件之前给出提示，要求用户确认是否覆盖，回答"y"时目标文件将被覆盖。
    -p：除复制文件的内容外，还把修改时间和访问权限也复制到新文件中。
    -r：若给出的源文件是一个目录文件，此时将复制该目录下所有的子目录和文件。
    -l：不复制文件，只是生成链接文件。

rcp
Linux rcp命令用于复制远程文件或目录。
rcp指令用在远端复制文件或目录，如同时指定两个以上的文件或目录，且最后的目的地是一个已经存在的目录，则它会把前面指定的所有文件或目录复制到该目录中。
语法
rcp [-pr][源文件或目录][目标文件或目录]
或
rcp [-pr][源文件或目录...][目标文件]
参数：
-p 　保留源文件或目录的属性，包括拥有者，所属群组，权限与时间。
-r 　递归处理，将指定目录下的文件与子目录一并处理。
实例
使用rcp指令复制远程文件到本地进行保存。
设本地主机当前账户为rootlocal，远程主机账户为root，要将远程主机（218.6.132.5）主目录下的文件"testfile"复制到本地目录"test"中，则输入如下命令：
rcp root@218.6.132.5:./testfile testfile  #复制远程文件到本地  
rcp root@218.6.132.5:home/rootlocal/testfile testfile  
#要求当前登录账户cmd 登录到远程主机  
rcp 218.6.132.5:./testfile testfile
注意：指令"rcp"执行以后不会有返回信息，仅需要在目录"test"下查看是否存在文件"testfile"。若存在，则表示远程复制操作成功，否则远程复制操作失败。 

scp
Linux scp 命令用于 Linux 之间复制文件和目录。
scp 是 secure copy 的缩写, scp 是 linux 系统下基于 ssh 登陆进行安全的远程文件拷贝命令。
scp 是加密的，rcp 是不加密的，scp 是 rcp 的加强版。
语法
scp [-1246BCpqrv] [-c cipher] [-F ssh_config] [-i identity_file]
[-l limit] [-o ssh_option] [-P port] [-S program]
[[user@]host1:]file1 [...] [[user@]host2:]file2
简易写法:
scp [可选参数] file_source file_target 
参数说明：
    -1： 强制scp命令使用协议ssh1
    -2： 强制scp命令使用协议ssh2
    -4： 强制scp命令只使用IPv4寻址
    -6： 强制scp命令只使用IPv6寻址
    -B： 使用批处理模式（传输过程中不询问传输口令或短语）
    -C： 允许压缩。（将-C标志传递给ssh，从而打开压缩功能）
    -p：保留原文件的修改时间，访问时间和访问权限。
    -q： 不显示传输进度条。
    -r： 递归复制整个目录。
    -v：详细方式显示输出。scp和ssh(1)会显示出整个过程的调试信息。这些信息用于调试连接，验证和配置问题。
    -c cipher： 以cipher将数据传输进行加密，这个选项将直接传递给ssh。
    -F ssh_config： 指定一个替代的ssh配置文件，此参数直接传递给ssh。
    -i identity_file： 从指定文件中读取传输时使用的密钥文件，此参数直接传递给ssh。
    -l limit： 限定用户所能使用的带宽，以Kbit/s为单位。
    -o ssh_option： 如果习惯于使用ssh_config(5)中的参数传递方式，
    -P port：注意是大写的P, port是指定数据传输用到的端口号
    -S program： 指定加密传输时所使用的程序。此程序必须能够理解ssh(1)的选项。
实例
1、从本地复制到远程
命令格式：
scp local_file remote_username@remote_ip:remote_folder 
或者 
scp local_file remote_username@remote_ip:remote_file 
或者 
scp local_file remote_ip:remote_folder 
或者 
scp local_file remote_ip:remote_file 
    第1,2个指定了用户名，命令执行后需要再输入密码，第1个仅指定了远程的目录，文件名字不变，第2个指定了文件名；
    第3,4个没有指定用户名，命令执行后需要输入用户名和密码，第3个仅指定了远程的目录，文件名字不变，第4个指定了文件名； 
应用实例：
scp /home/space/music/1.mp3 root@www.runoob.com:/home/root/others/music 
scp /home/space/music/1.mp3 root@www.runoob.com:/home/root/others/music/001.mp3 
scp /home/space/music/1.mp3 www.runoob.com:/home/root/others/music 
scp /home/space/music/1.mp3 www.runoob.com:/home/root/others/music/001.mp3 

复制目录命令格式：
scp -r local_folder remote_username@remote_ip:remote_folder 
或者 
scp -r local_folder remote_ip:remote_folder 
    第1个指定了用户名，命令执行后需要再输入密码；
    第2个没有指定用户名，命令执行后需要输入用户名和密码； 
应用实例：
scp -r /home/space/music/ root@www.runoob.com:/home/root/others/ 
scp -r /home/space/music/ www.runoob.com:/home/root/others/ 
上面命令将本地 music 目录复制到远程 others 目录下。
2、从远程复制到本地
从远程复制到本地，只要将从本地复制到远程的命令的后2个参数调换顺序即可，如下实例
应用实例：
scp root@www.runoob.com:/home/root/others/music /home/space/music/1.mp3 
scp -r www.runoob.com:/home/root/others/ /home/space/music/
说明
1.如果远程服务器防火墙有为scp命令设置了指定的端口，我们需要使用 -P 参数来设置命令的端口号，命令格式如下：
#scp 命令使用端口号 4588
scp -P 4588 remote@www.runoob.com:/usr/local/sin.sh /home/administrator
2.使用scp命令要确保使用的用户具有可读取远程服务器相应文件的权限，否则scp命令是无法起作用的。

rm
Linux rm（英文全拼：remove）命令用于删除一个文件或者目录。
语法
rm [options] name...
参数：
    -i 删除前逐一询问确认。
    -f 即使原档案属性设为唯读，亦直接删除，无需逐一确认。
    -r 将目录及以下之档案亦逐一删除。

tmpwatch
Linux tmpwatch命令用于删除暂存文件。
执行tmpwatch指令可删除不必要的暂存文件，您可以设置文件超期时间，单位以小时计算。
语法
tmpwatch [-afqv][--test][超期时间][目录...]
参数：
    -a或--all 　删除任何类型的文件。
    -f或--force 　强制删除文件或目录，其效果类似rm指令的"-f"参数。
    -q或--quiet 　不显示指令执行过程。
    -v或--verbose 　详细显示指令执行过程。
    -test 　仅作测试，并不真的删除文件或目录。
注意：该指令需要root权限，因此在使用tmpwatch命令前应该使用su命令切换用户。

touch
Linux touch命令用于修改文件或者目录的时间属性，包括存取时间和更改时间。若文件不存在，系统会建立一个新的文件。
ls -l 可以显示档案的时间记录。
语法
touch [-acfm][-d<日期时间>][-r<参考文件或目录>] [-t<日期时间>][--help][--version][文件或目录…]
    参数说明：
    -a 改变档案的读取时间记录。
    -m 改变档案的修改时间记录。
    -c 假如目的档案不存在，不会建立新的档案。与 --no-create 的效果一样。
    -f 不使用，是为了与其他 unix 系统的相容性而保留。
    -r 使用参考档的时间记录，与 --file 的效果一样。
    -d 设定时间与日期，可以使用各种不同的格式。
    -t 设定档案的时间记录，格式与 date 指令相同。
    --no-create 不会建立新档案。
    --help 列出指令格式。
    --version 列出版本讯息。


read
Linux read命令用于从标准输入读取数值。
read 内部命令被用来从标准输入读取单行数据。这个命令可以用来读取键盘输入，当使用重定向的时候，可以读取文件中的一行数据。
语法
read [-ers] [-a aname] [-d delim] [-i text] [-n nchars] [-N nchars] [-p prompt] [-t timeout] [-u fd] [name ...]
参数说明:
    -a 后跟一个变量，该变量会被认为是个数组，然后给其赋值，默认是以空格为分割符。
    -d 后面跟一个标志符，其实只有其后的第一个字符有用，作为结束的标志。
    -p 后面跟提示信息，即在输入前打印提示信息。
    -e 在输入的时候可以使用命令补全功能。
    -n 后跟一个数字，定义输入文本的长度，很实用。
    -r 屏蔽\，如果没有该选项，则\作为一个转义字符，有的话 \就是个正常的字符了。
    -s 安静模式，在输入字符时不再屏幕上显示，例如login时输入密码。
    -t 后面跟秒数，定义输入字符的等待时间。
    -u 后面跟fd，从文件描述符中读入，该文件描述符可以是exec新开启的。 

tee
Linux tee命令用于读取标准输入的数据，并将其内容输出成文件。
tee指令会从标准输入设备读取数据，将其内容输出到标准输出设备，同时保存成文件。
语法
tee [-ai][--help][--version][文件...]
参数：
    -a或--append 　附加到既有文件的后面，而非覆盖它．
    -i或--ignore-interrupts 　忽略中断信号。
    --help 　在线帮助。
    --version 　显示版本信息。

split
Linux split命令用于将一个文件分割成数个。
该指令将大文件分割成较小的文件，在默认情况下将按照每1000行切割成一个小文件。
语法
split [--help][--version][-<行数>][-b <字节>][-C <字节>][-l <行数>][要切割的文件][输出文件名]
参数说明：
    -<行数> : 指定每多少行切成一个小文件
    -b<字节> : 指定每多少字节切成一个小文件
    --help : 在线帮助
    --version : 显示版本信息
    -C<字节> : 与参数"-b"相似，但是在切 割时将尽量维持每行的完整性
    [输出文件名] : 设置切割后文件的前置文件名， split会自动在前置文件名后再加上编号

cut
Linux cut命令用于显示每行从开头算起 num1 到 num2 的文字。
语法
cut  [-bn] [file]
cut [-c] [file]
cut [-df] [file]
使用说明:
cut 命令从文件的每一行剪切字节、字符和字段并将这些字节、字符和字段写至标准输出。
如果不指定 File 参数，cut 命令将读取标准输入。必须指定 -b、-c 或 -f 标志之一。
参数:
    -b ：以字节为单位进行分割。这些字节位置将忽略多字节字符边界，除非也指定了 -n 标志。
    -c ：以字符为单位进行分割。
    -d ：自定义分隔符，默认为制表符。
    -f ：与-d一起使用，指定显示哪个区域。
    -n ：取消分割多字节字符。仅和 -b 标志一起使用。如果字符的最后一个字节落在由 -b 标志的 List 参数指示的
    范围之内，该字符将被写出；否则，该字符将被排除

ln
Linux ln（英文全拼：link files）命令是一个非常重要命令，它的功能是为某一个文件在另外一个位置建立一个同步的链接。
当我们需要在不同的目录，用到相同的文件时，我们不需要在每一个需要的目录下都放一个必须相同的文件，我们只要在某个固定的目录，放上该文件，然后在 其它的目录下用ln命令链接（link）它就可以，不必重复的占用磁盘空间。
语法
 ln [参数][源文件或目录][目标文件或目录]
其中参数的格式为
[-bdfinsvF] [-S backup-suffix] [-V {numbered,existing,simple}]
[--help] [--version] [--]
命令功能 :
Linux文件系统中，有所谓的链接(link)，我们可以将其视为档案的别名，而链接又可分为两种 : 硬链接(hard link)与软链接(symbolic link)，硬链接的意思是一个档案可以有多个名称，而软链接的方式则是产生一个特殊的档案，该档案的内容是指向另一个档案的位置。硬链接是存在同一个文件系统中，而软链接却可以跨越不同的文件系统。
不论是硬链接或软链接都不会将原本的档案复制一份，只会占用非常少量的磁碟空间。

软链接：
    1.软链接，以路径的形式存在。类似于Windows操作系统中的快捷方式
    2.软链接可以 跨文件系统 ，硬链接不可以
    3.软链接可以对一个不存在的文件名进行链接
    4.软链接可以对目录进行链接

硬链接：
    1.硬链接，以文件副本的形式存在。但不占用实际空间。
    2.不允许给目录创建硬链接
    3.硬链接只有在同一个文件系统中才能创建

命令参数
必要参数：
    -b 删除，覆盖以前建立的链接
    -d 允许超级用户制作目录的硬链接
    -f 强制执行
    -i 交互模式，文件存在则提示用户是否覆盖
    -n 把符号链接视为一般目录
    -s 软链接(符号链接)
    -v 显示详细的处理过程
选择参数：
    -S "-S<字尾备份字符串> "或 "--suffix=<字尾备份字符串>"
    -V "-V<备份方式>"或"--version-control=<备份方式>"
    --help 显示帮助信息
    --version 显示版本信息

rhmask
Linux rhmask命令用于对文件进行加密和解密操作。
执行rhmask指令可制作加密过的文件，方便用户在公开的网络上传输该文件，而不至于被任意盗用。
语法
rhmask [加密文件][输出文件] 
或 
rhmask [-d][加密文件][源文件][输出文件]
参数：
    -d 　产生加密过的文件。
实例
使用指令"rhmask"将加密文件"code.txt"进行加密后，另存为输出文件"demo.txt"，输入如下命令：
$ rhmask code.txt demo.txt
以上命令执行后，文件"code.txt"将被加密后，另存为已经加密的文件"demo.txt"。
注意：该指令有两种语法，用户可以有选择性地进行使用即可。 

awk
AWK 是一种处理文本文件的语言，是一个强大的文本分析工具。
之所以叫 AWK 是因为其取了三位创始人 Alfred Aho，Peter Weinberger, 和 Brian Kernighan 的 Family Name 的首字符。
语法
awk [选项参数] 'script' var=value file(s)
或
awk [选项参数] -f scriptfile var=value file(s)
选项参数说明：
    -F fs or --field-separator fs
    指定输入文件折分隔符，fs是一个字符串或者是一个正则表达式，如-F:。
    -v var=value or --asign var=value
    赋值一个用户定义变量。
    -f scripfile or --file scriptfile
    从脚本文件中读取awk命令。
    -mf nnn and -mr nnn
    对nnn值设置内在限制，-mf选项限制分配给nnn的最大块数目；-mr选项限制记录的最大数目。这两个功能是Bell实验室版awk的扩展功能，在标准awk中不适用。
    -W compact or --compat, -W traditional or --traditional
    在兼容模式下运行awk。所以gawk的行为和标准的awk完全一样，所有的awk扩展都被忽略。
    -W copyleft or --copyleft, -W copyright or --copyright
    打印简短的版权信息。
    -W help or --help, -W usage or --usage
    打印全部awk选项和每个选项的简短说明。
    -W lint or --lint
    打印不能向传统unix平台移植的结构的警告。
    -W lint-old or --lint-old
    打印关于不能向传统unix平台移植的结构的警告。
    -W posix
    打开兼容模式。但有以下限制，不识别：/x、函数关键字、func、换码序列以及当fs是一个空格时，将新行作为一个域分隔符；操作符**和**=不能代替^和^=；fflush无效。
    -W re-interval or --re-inerval
    允许间隔正则表达式的使用，参考(grep中的Posix字符类)，如括号表达式[[:alpha:]]。
    -W source program-text or --source program-text
    使用program-text作为源代码，可与-f命令混用。
    -W version or --version
    打印bug报告信息的版本。

git
Linux git命令是文字模式下的文件管理员。
git是用来管理文件的程序，它十分类似DOS下的Norton Commander，具有互动式操作界面。它的操作方法和Norton Commander几乎一样。
语法
git
操作说明：
    F1 ：执行info指令，查询指令相关信息，会要求您输入欲查询的名称。
    F2 ：执行cat指令，列出文件内容。
    F3 ：执行gitview指令，观看文件内容。
    F4 ：执行vi指令，编辑文件内容。
    F5 ：执行cp指令，复制文件或目录，会要求您输入目标文件或目录。
    F6 ：执行mv指令，移动文件或目录，或是更改其名称，会要求您输入目标文件或目录。
    F7 ：执行mkdir指令，建立目录。
    F8 ：执行rm指令，删除文件或目录。
    F9 ：执行make指令，批处理执行指令或编译程序时，会要求您输入相关命令。
    F10 ：离开git文件管理员。

gitview
Linux gitview命令用于观看文件的内容，它会同时显示十六进制和ASCII格式的字码。
语法
gitview [-bchilv][文件]
参数：
    -b 　单色模式，不使用ANSI控制码显示彩色。
    -c 　彩色模式，使用ANSI控制码显示色彩。
    -h 　在线帮助。
    -i 　显示存放gitview程序的所在位置。
    -l 　不使用先前的显示字符。
    -v 　显示版本信息。

indent
Linux indent命令用于调整C原始代码文件的格式。
indent可辨识C的原始代码文件，并加以格式化，以方便程序设计师阅读。
语法
indent [参数][源文件] 
或 
indent [参数][源文件][-o 目标文件]
参数：
    -bad或--blank-lines-after-declarations 　在声明区段或加上空白行。
    -bap或--blank-lines-after-procedures 　在程序或加上空白行。
    -bbb或--blank-lines-after-block-comments 　在注释区段后加上空白行。
    -bc或--blank-lines-after-commas 　在声明区段中，若出现逗号即换行。
    -bl或--braces-after-if-line 　if(或是else,for等等)与后面执行区段的"{"不同行，且"}"自成一行。
    -bli<缩排格数>或--brace-indent<缩排格数> 　设置{ }缩排的格数。
    -br或--braces-on-if-line 　if(或是else,for等等)与后面执行跛段的"{"不同行，且"}"自成一行。
    -bs或--blank-before-sizeof 　在sizeof之后空一格。
    -c<栏数>或--comment-indentation<栏数> 　将注释置于程序码右侧指定的栏位。
    -cd<栏数>或--declaration-comment-column<栏数> 　将注释置于声明右侧指定的栏位。
    -cdb或--comment-delimiters-on-blank-lines 　注释符号自成一行。
    -ce或--cuddle-else 　将else置于"}"(if执行区段的结尾)之后。
    -ci<缩排格数>或--continuation-indentation<缩排格数> 　叙述过长而换行时，指定换行后缩排的格数。
    -cli<缩排格数>或--case-indentation-<缩排格数> 　使用case时，switch缩排的格数。
    -cp<栏数>或-else-endif-column<栏数> 　将注释置于else与elseif叙述右侧定的栏位。
    -cs或--space-after-cast 　在cast之后空一格。
    -d<缩排格数>或-line-comments-indentation<缩排格数> 　针对不是放在程序码右侧的注释，设置其缩排格数。
    -di<栏数>或--declaration-indentation<栏数> 　将声明区段的变量置于指定的栏位。
    -fc1或--format-first-column-comments 　针对放在每行最前端的注释，设置其格式。
    -fca或--format-all-comments 　设置所有注释的格式。
    -gnu或--gnu-style 　指定使用GNU的格式，此为预设值。
    -i<格数>或--indent-level<格数> 　设置缩排的格数。
    -ip<格数>或--parameter-indentation<格数> 　设置参数的缩排格数。
    -kr或--k-and-r-style 　指定使用Kernighan&Ritchie的格式。
    -lp或--continue-at-parentheses 　叙述过长而换行，且叙述中包含了括弧时，将括弧中的每行起始栏位内容垂直对其排列。
    -nbad或--no-blank-lines-after-declarations 　在声明区段后不要加上空白行。
    -nbap或--no-blank-lines-after-procedures 　在程序后不要加上空白行。
    -nbbb或--no-blank-lines-after-block-comments 　在注释区段后不要加上空白行。
    -nbc或--no-blank-lines-after-commas 　在声明区段中，即使出现逗号，仍旧不要换行。
    -ncdb或--no-comment-delimiters-on-blank-lines 　注释符号不要自成一行。
    -nce或--dont-cuddle-else 　不要将else置于"}"之后。
    -ncs或--no-space-after-casts 　不要在cast之后空一格。
    -nfc1或--dont-format-first-column-comments 　不要格式化放在每行最前端的注释。
    -nfca或--dont-format-comments 　不要格式化任何的注释。
    -nip或--no-parameter-indentation 　参数不要缩排。
    -nlp或--dont-line-up-parentheses 　叙述过长而换行，且叙述中包含了括弧时，不用将括弧中的每行起始栏位垂直对其排列。
    -npcs或--no-space-after-function-call-names 　在调用的函数名称之后，不要加上空格。
    -npro或--ignore-profile 　不要读取indent的配置文件.indent.pro。
    -npsl或--dont-break-procedure-type 　程序类型与程序名称放在同一行。
    -nsc或--dont-star-comments 　注解左侧不要加上星号(*)。
    -nsob或--leave-optional-semicolon 　不用处理多余的空白行。
    -nss或--dont-space-special-semicolon 　若for或while区段仅有一行时，在分号前不加上空格。
    -nv或--no-verbosity 　不显示详细的信息。
    -orig或--original 　使用Berkeley的格式。
    -pcs或--space-after-procedure-calls 　在调用的函数名称与"{"之间加上空格。
    -psl或--procnames-start-lines 　程序类型置于程序名称的前一行。
    -sc或--start-left-side-of-comments 　在每行注释左侧加上星号(*)。
    -sob或--swallow-optional-blank-lines 　删除多余的空白行。
    -ss或--space-special-semicolon 　若for或swile区段今有一行时，在分号前加上空格。
    -st或--standard-output 　将结果显示在标准输出设备。
    -T 　数据类型名称缩排。
    -ts<格数>或--tab-size<格数> 　设置tab的长度。
    -v或--verbose 　执行时显示详细的信息。
    -version 　显示版本信息。

Indent代码格式化说明
使用的indent参数                     值   含义
--blank-lines-after-declarations  bad   变量声明后加空行
--blank-lines-after-procedures  bap   函数结束后加空行
--blank-lines-before-block-comments   bbb   块注释前加空行
--break-before-boolean-operator   bbo   较长的行，在逻辑运算符前分行
--blank-lines-after-commas  nbc   变量声明中，逗号分隔的变量不分行
--braces-after-if-line  bl  "if"和"{"分做两行
--brace-indent 0  bli0  "{"不继续缩进
--braces-after-struct-decl-line   bls   定义结构，"struct"和"{"分行
--comment-indentationn  c33   语句后注释开始于行33
--declaration-comment-columnn   cd33  变量声明后注释开始于行33
--comment-delimiters-on-blank-lines   ncdb  不将单行注释变为块注释
--cuddle-do-while   ncdw  "do --- while"的"while"和其前面的"}"另起一行
--cuddle-else   nce   "else"和其前面的"}"另起一行
--case-indentation 0  cli0  switch中的case语句所进0个空格
--else-endif-columnn  cp33  #else, #endif后面的注释开始于行33
--space-after-cast  cs  在类型转换后面加空格
--line-comments-indentation n   d0  单行注释（不从1列开始的），不向左缩进
--break-function-decl-args  nbfda   关闭：函数的参数一个一行
--declaration-indentationn  di2   变量声明，变量开始于2行，即不必对齐
--format-first-column-comments  nfc1  不格式化起于第一行的注释
--format-all-comments   nfca  不开启全部格式化注释的开关
--honour-newlines   hnl   Prefer to break long lines at the position of newlines in the input.
--indent-leveln   i4  设置缩进多少字符，如果为tab的整数倍，用tab来缩进，否则用空格填充。
--parameter-indentationn  ip5   旧风格的函数定义中参数说明缩进5个空格
--line-length 75  l75   非注释行最长75
--continue-at-parentheses   lp  续行从上一行出现的括号开始
--space-after-procedure-calls   pcs   函数和"("之间插入一个空格
--space-after-parentheses   nprs  在"（"后"）"前不插入空格
--procnames-start-lines   psl   将函数名和返回类型放在两行定义
--space-after-for   saf   for后面有空格
--space-after-if  sai   if后面有空格
--space-after-while   saw   while后面有空格
--start-left-side-of-comments   nsc   不在生成的块注释中加*
--swallow-optional-blank-lines  nsob  不去掉可添加的空行
--space-special-semicolon   nss   一行的for或while语句，在";"前不加空。
--tab-size  ts4   一个tab为4个空格（要能整除"-in"）
--use-tabs  ut  使用tab来缩进

mc
Linux mc命令用于提供一个菜单式的文件管理程序。
执行mc之后，将会看到菜单式的文件管理程序，共分成４个部分。
语法
mc [-abcdfhkPstuUVx][-C <参数>][-l <文件>][-v <文件>][目录]
　　参　　数：
    -a 　当mc程序画线时不用绘图字符画线。
    -b 　使用单色模式显示。
    -c 　使用彩色模式显示。
    -C<参数> 　指定显示的颜色。
    -d 　不使用鼠标。
    -f 　显示mc函数库所在的目录。
    -h 　显示帮助。
    -k 　重设softkeys成预设置。
    -l<文件> 　在指定文件中保存ftpfs对话窗的内容。
    -P 　程序结束时，列出最后的工作目录。
    -s 　用慢速的终端机模式显示，在这模式下将减少大量的绘图及文字显示。
    -t 　使用TEMPCAP变量设置终端机，而不使用预设置。
    -u 　不用目前的shell程序。
    -U 　使用目前的shell程序。
    -v<文件> 　使用mc的内部编辑器来显示指定的文件。
    -V 　显示版本信息。
    -x 　指定以xterm模式显示。

Linux MC 相关操作
命令按键  描 述
F9 or Esc+9   激活菜单栏
Tab   在两个窗口间移动
F10 or Esc+0  退出MC
Control-Enter or Alt-Enter  可以将文件名拷贝到命令行
F1 or Esc+1   打开帮助页面

虽然MC很好用，不过我还是建议大家使用命令行工具！

mtools
Linux mtools命令用于显示mtools支持的指令。
mtools为MS-DOS文件系统的工具程序，可模拟许多MS-DOS的指令。这些指令都是mtools的符号连接，因此会有一些共同的特性。
语法
mtools
参数说明：
    -a 　长文件名重复时自动更改目标文件的长文件名。
    -A 　短文件名重复但长文件名不同时自动更改目标文件的短文件名。
    -o 　长文件名重复时，将目标文件覆盖现有的文件。
    -O 　短文件名重复但长文件名不同时，将目标文件覆盖现有的文件。
    -r 　长文件名重复时，要求用户更改目标文件的长文件名。
    -R 　短文件名重复但长文件名不同时，要求用户更改目标文件的短文件名。
    -s 　长文件名重复时，则不处理该目标文件。
    -S 　短文件名重复但长文件名不同时，则不处理该目标文件。
    -v 　执行时显示详细的说明。
    -V 　显示版本信息。

mattrib
 Linux mattrib命令用来变更或显示MS-DOS文件的属性。
mattrib为mtools工具指令，模拟MS-DOS的attrib指令，可变更MS-DOS文件的属性。
语法
mattrib [-a|+a] [-h|+h] [-r|+r] [-s|+s] [-/] [-X] msdosfile [ msdosfiles ... ]
参数：
    -a/+a 除去/设定备份属性。
    -h/+h 除去/设定隐藏属性。
    -r/+r 除去/设定唯读属性。
    -s/+s 除去/设定系统属性。
    -/ 递回的处理包含所有子目录下的档案。
    -X 以较短的格式输出结果。


mdel
Linux mdel命令用来删除 MSDOS 格式的档案。
在删除只读之前会有提示信息产生。
语法
mdel [-v] msdosfile [ msdosfiles ... ]
参数：
    -v 显示更多的讯息。

mdir
 Linux mdir命令用于显示MS-DOS目录。
mdir为mtools工具指令，模拟MS-DOS的dir指令，可显示MS-DOS文件系统中的目录内容。
语法
mdir [-afwx/][目录]
参数：
    -/ 显示目录下所有子目录与文件。
    -a 　显示隐藏文件。
    -f 　不显示磁盘所剩余的可用空间。
    -w 　仅显示目录或文件名称，并以横排方式呈现，以便一次能显示较多的目录或文件。
    -X 　仅显示目录下所有子目录与文件的完整路径，不显示其他信息。

mmove
Linux mmove命令用于在MS-DOS文件系统中，移动文件或目录，或更改名称。
mmove为mtools工具命令，模拟MS-DOS的move命令，可在MS-DOS文件系统中移动现有的文件或目录，或是更改现有文件或目录的名称。
语法
mmove [源文件或目录...][目标文件或目录]
参数说明:
    [源文件或目录…]: 执行操作的源文件或目录路径
    [目标文件或目录]: 执行操作后的目标文件或目录路径 


mcopy
Linux mcopy命令用来复制 MSDOS 格式文件到 Linux 中，或是由 Linux 中复制 MSDOS 文件到磁片上。
mcopy 可复制单一的文件到所指定的文件名称，或是复制数个文件到所指定的目录之中。来源与目的文件可为 MSDOS 或是 Linux 文件。
mcopy指令是一种mtools工具指令，可以在DOS系统中复制文件或者在DOS与Linux操作系统之间进行文件复制。
语法
mcopy [-bnmpQt/][源文件][目标文件或目录]
参数：
    b 批处理模式。这是为大量的文件复制进行最佳化的选项,但是当在复制文件过程中产生 crash 时，会有安全性的问题产生。/ 递回的复制。包含目录所含文件与其下所有子目录中的文件。
    -n 覆盖其他文件时，不需要进行确认而直接覆盖
    m 将源文件修改时间设置为目标文件的修改时间。
    p 将源文件的属性设置为目标文件的属性。
    Q 当复制多个文件产生错误时，尽快结束程序。
    t 转换为文本文件。
    o 在覆盖 MSDOS 文件时不会出现警示讯息。


mread
Linux mread命令用于将MS-DOS文件复制到Linux/Unix的目录中。
mread为mtools工具命令，可将MS-DOS文件复制到Linux的文件系统中。这个命令目前已经不常用，一般都使用mcopy命令来代替。
语法
mread [MS-DOS文件...][Linux文件或目录]
参数说明:
    [MS-DOS文件…]: 执行操作的DOS源文件或目录路径
    [Linux文件或目录]: 执行操作后的Linux目标文件或目录路径

mren
Linux mren命令用于更改MS-DOS文件或目录的名称，或是���动文件或目录。
mren为MS-DOS工具指令，与DOS下的ren指令相似，可以实现更改MS-DOS文件或目录名称。
源文件必须是磁盘上已经存在的文件，若忽略盘符及路径，则表示当前盘及当前目录的文件。
新文件名是所要更换的文件名称。新文件名称前不可以加与源文件不同的盘符及路径，因为该命令只能更改同一盘上的文件名称。
语法
mren [源文件或目录...][目标文件或目录]
参数说明：
    [源文件或目录…]： 执行操作的源文件名或者源文件路径
    [目标文件或目录]： 执行操作的目标文件名或者目标文件路径 

mshowfat
Linux mshowfat命令用于显示MS-DOS文件在FAT中的记录。
mshowfat为mtools工具指令，可显示MS-DOS文件在FAT中的记录编号。
语法
mshowfat [文件...]
参数说明：
[文件…]： 执行操作的文件相对路径或者绝对路径 

mtoolstest
Linux mtoolstest命令用于测试并显示mtools的相关设置。
mtoolstest为mtools工具指令，可读取与分析mtools的配置文件，并在屏幕上显示结果。
语法
mtoolstest


## 2、文档编辑
col   colrm   comm  csplit
ed  egrep   ex  fgrep
fmt   fold  grep  ispell
jed   joe   join  look
mtype   pico  rgrep   sed
sort  spell   tr  expr
uniq  wc  let    
## 3、文件传输
lprm  lpr   lpq   lpd
bye   ftp   uuto  uupick
uucp  uucico  tftp  ncftp
ftpshut   ftpwho  ftpcount   
## 4、磁盘管理
cd  df  dirs  du
edquota   eject   mcd   mdeltree
mdu   mkdir   mlabel  mmd
mrd   mzip  pwd   quota
mount   mmount  rmdir   rmt
stat  tree  umount  ls
quotacheck  quotaoff  lndir   repquota
quotaon            
## 5、磁盘维护
badblocks   cfdisk  dd  e2fsck
ext2ed  fsck  fsck.minix  fsconf
fdformat  hdparm  mformat   mkbootdisk
mkdosfs   mke2fs  mkfs.ext2   mkfs.msdos
mkinitrd  mkisofs   mkswap  mpartition
swapon  symlinks  sync  mbadblocks
mkfs.minix  fsck.ext2   fdisk   losetup
mkfs  sfdisk  swapoff    
## 6、网络通讯
apachectl   arpwatch  dip   getty
mingetty  uux   telnet  uulog
uustat  ppp-off   netconfig   nc
httpd   ifconfig  minicom   mesg
dnsconf   wall  netstat   ping
pppstats  samba   setserial   talk
traceroute  tty   newaliases  uuname
netconf   write   statserial  efax
pppsetup  tcpdump   ytalk   cu
smbd  testparm  smbclient   shapecfg
## 7、系统管理
adduser   chfn  useradd   date
exit  finger  fwhios  sleep
suspend   groupdel  groupmod  halt
kill  last  lastb   login
logname   logout  ps  nice
procinfo  top   pstree  reboot
rlogin  rsh   sliplogin   screen
shutdown  rwho  sudo  gitps
swatch  tload   logrotate   uname
chsh  userconf  userdel   usermod
vlock   who   whoami  whois
newgrp  renice  su  skill
w   id  groupadd  free
## 8、系统设置
reset   clear   alias   dircolors
aumix   bind  chroot  clock
crontab   declare   depmod  dmesg
enable  eval  export  pwunconv
grpconv   rpm   insmod  kbdconfig
lilo  liloconfig  lsmod   minfo
set   modprobe  ntsysv  mouseconfig
passwd  pwconv  rdate   resize
rmmod   grpunconv   modinfo   time
setup   sndconfig   setenv  setconsole
timeconfig  ulimit  unset   chkconfig
apmd  hwclock   mkkickstart   fbset
unalias   SVGATextMode  gpasswd    
## 9、备份压缩
ar
bunzip2
bzip2
bzip2recover
gunzip
unarj
compress
cpio
dump
uuencode
gzexe
gzip
lha
restore
tar
uudecode
unzip
zip
zipinfo    
## 10、设备管理

dumpkeys
Linux dumpkeys命令用于显示键盘映射表，输出的内容可以被loadkeys命令识别,改变映射关系。
语法
dumpkey[选择参数]
参数说明:
    -i 驱动信息(键码范围、数量、状态键)
    -l 详细驱动信息
    -n 十六进制显示
    -f 显示全部信息
    -1 分行显示按键组合
    -S 设定输出格式(0：预设 1：完整 2：分行 3简单)
    --funcs-only 功能键信息
    --keys-only 键组合信息
    --compose-only 普通键信息 

loadkeys
Linux loadkeys命令可以根据一个键盘定义表改变 linux 键盘驱动程序转译键盘输入过程。详细的说明请参考 dumpkeys。
语法
loadkeys [ -d --default ] [ -h --help ] [ -q --quiet ] [ -v --verbose [ -v --verbose ]...] [ -m --mktable ] [ -c --clearcompose ] [ -s --clearstrings ] [ filename... ]
参数:
    -v --verbose：印出详细的资料，你可以重复以增加详细度。
    -q --quiet：不要显示任何讯息。
    -c --clearcompose：清除所有 composite 定义。
    -s --clearstrings：将定串定义表清除。

MAKEDEV
Linux MAKEDEV命令用于新增 /dev/ 下的装置档案，多数分区已经将所有的档案都产生，故一般而言不太会需要用到这个命令。
语法
MAKEDEV -V
MAKEDEV [ -n ] [ -v ] update
MAKEDEV [ -n ] [ -v ] [ -d ] device ...

poweroff
poweroff 命令命令用于关闭计算器并切断电源。
使用权限：系统管理者。
语法
poweroff [-n] [-w] [-d] [-f] [-i] [-h]
参数说明：
    -n : 在关机前不做将记忆体资料写回硬盘的动作
    -w : 并不会真的关机，只是把记录写到 /var/log/wtmp 档案里
    -d : 不把记录写到 /var/log/wtmp 文件里
    -i : 在关机之前先把所有网络相关的装置先停止
    -p : 关闭操作系统之前将系统中所有的硬件设置为备用模式。

rdev
Linux rdev命令可以用来查询/设置内核映像文件的根设备，RAM 磁盘大小或视频模式。
不带任何参数的 rdev 命令将输出当前根文件系统的 /etc/mtab 文件行。不带任何参数的 ramsize, vidmode, 和 rootflags 将显示帮助信息。
语法
rdev [-rsvh ] [-o offset ] [ image [value [ offset ] ] ]
但是随著使用者想要设定的参数的不同，底下的方式也是一样：
rdev [ -o offset ] [ image [ root_device [ offset ] ] ]
swapdev [ -o offset ] [ image [ swap_device [ offset ] ] ]
ramsize [ -o offset ] [ image [ size [ offset ] ] ]
videomode [ -o offset ] [ image [ mode [ offset ] ] ]
rootflags [ -o offset ] [ image [ flags [ offset ] ] ]
参数：
    -r： 使得 rdev 作为 ramsize 运行。
    -R： 使得 rdev 作为 rootflags 运行。
    -v： 使得 rdev 作为 vidmode 运行。
    -h： 提供帮助。

setleds
Linux setleds命令用来设定键盘上方三个 LED 的状态。在 Linux 中，每一个虚拟主控台都有独立的设定。
语法
setleds [-v] [-L] [-D] [-F] [{+|-}num] [{+|-}caps] [{+|-}scroll]
参数：
    -F：预设的选项，设定虚拟主控台的状态。
    -D：除了改变虚拟主控台的状态外，还改变预设的状态。
    -L：不改变虚拟主控台的状态，但直接改变 LED 显示的状态。这会使得 LDE 显示和目前虚拟主控台的状态不符合。我们可以在稍后用 -L 且不含其它选项的 setleds 命令回复正常状态。
    -num +num：将数字键打开或关闭。
    -caps +caps：把大小写键打开或关闭。
    -scroll +scroll：把选项键打开或关闭。


## 其他命令
    Linux bc 命令
    Linux tail 命令
    Linux head 命令
    Linux xargs 命令
    Linux ip 命令
    Linux nohup 命令
    Linux killall 命令
    Linux pkill 命令

# linux读书笔记
## 基础命令
显示日期：
date
显示日历：
cal
计算器：
bc
dc

命令的帮助说明选项：
--help
命令的操作说明命令：
man
info

系统关机与重启：
sync	:将内存中的资料同步写入硬盘
shutdown [options] [时间] [警告讯息] :关机
 -k : 不要真的关机，只是发送警告讯息出去！
 -r : 在将系统服务停止后就重新开机。
 -h : 将系统服务停止后，立即关机。
 -c : 取消已经在进行的shutdown指令内容
 时间 : 指定系统的关机时间。若没有这个项目，则预设1分钟后自动进行

halt	: 系统停止
poweroff : 系统关机
reboot	: 重启系统

systemctl [指令]
halt 	:进入系统停止模式
poweroff :进入关机模式
reboot 	:直接重新开机
suspend :进入休眠模式

启动图形界面：
startx	:启动图形界面

系统语系
LANG :系统变量，
locale :查看系统语系

执行档路径的变量：
$PATH :系统变量，可执行档案的查找路径

相对路径：
.	:代表此层目录
..	:代表上一层目录
-	:代表前一个工作目录
~	:代表『当前用户』所在的家目录
~account	:代表account这个用户的家目录(account是个账号名称)


## 显示档案
ls [options] dirname/filename :显示档案与目录的名称与相关属性，常用选项如：
 -a :列出全部的档案，连同隐藏档案
 -d :仅列出目录本身，而不是列出目录内的档案资料
 -l :以长资料串列出，包含档案的属性与权限等等资料
 -A :列出全部档案，连同隐藏档，但不包含.与..这两个目录
 -f :直接列出结果，而不进行排序(ls预设会以档案名排序)
 -F :根据档案、目录等资讯，给予资料结构，例如：* :代表可执行档; / :代表目录; = :代表socket档案; | :代表FIFO档案
 -h :将档案容量以人类较易读的方式(例如GB,MB,KB等等)列出来
 -i :列出inode号码
 -n :列出UID与GID而非用户与群组的名称
 -r :将排序结果反向输出
 -R :连同子目录内容一起列出来，等于将该目录下的所有档案都会显示出来
 -S :以档案的容量大小排序
 -t :以时间排序
 --color={aever, always, auto} : never :不要依据档案特性给予颜色显示; always :显示颜色; auto :让系统自行依据设定来判断是否给予颜色
 --full-time :以完整时间模式(包含年、月、日、时、分)输出
 --time={atime, ctime} :输出access时间; 或改变权限属性时间(ctime)，而非内容变更时间(modification time)

basename filename/dirname : 取得档案最后的档案名
dirname filename/dirname : 取得档案的目录名

修改档案属性权限
chgrp [options] 群组名称 档案或目录 :修改档案所属群组
 -R :进行循环的持续变更，亦即连同次目录下的所有目录、档案都更新成为群组。
chown [options] 账号名称:群组名称 档案或目录 :修改档案拥有者和群组
 -R :进行循环的持续变更，亦即连同次目录下的所有目录、档案都更新。
chmod [options] MODE 档案或目录 :修改档案的权限，SUID、SGID、SBIT等等特性
 MODE:
 xyz:数字型权限表示
 ugoa +-= rwxst :符号型权限表示
 options:
 -R :进行循环的持续变更，亦即连同次目录下的所有目录、档案都更新。

档案的复制、删除与移动
cp [options] 来源档(source) 目标档(destination) :复制档案与目录
 如果来源档有两个或以上，则最后一个目标档一定要是目录才行。
 options:
 -a : 相当于-dr --preserve=all 的意思。
 -i : 若目标档已经存在时，在覆盖前会先询问动作的进行。
 -r : 循环持续复制，用于目录的复制行为。
 -p : 连同档案的属性(权限、用户、时间)一起复制过去，而非使用预设属性(备份常用)
 -d : 若来源档为链接档的属性，则复制链接档属性而非档案本身。
 -f : 为强制(force)的意思，若目标档案已经存在且无法开启，则移除后再尝试一次。
 -l : 进行硬式链接的链接档建立，而非复制档案本身
 -s : 复制为符号链接档，亦即快捷方式档案
 -u : destination 比 source 旧时才更新 destination ,或 destination 不存在的情况下才复制。
 --preserve=all : 除了-p 的权限相关参数外，还加入了 SELinux 的属性，links,xattr等也复制了

rm [options] 档案或目录 : 移除档案或目录
 -f : 就是force的意思，忽略不存在的档案，不会出现警告信息
 -i : 互动模式，在删除前会询问用户是否动作。
 -r : 循环删除。最常用在目录删除了。这是非常危险的选项！

mv [options] source destination : 移动档案与目录或更名
 -f : force强行的意思，如果目标档案已经存在，不会询问直接覆盖。
 -i : 若目标档案已经存在时，就会询问是否覆盖。
 -u : 若目标档案已经存在，且 source 比较新，才会更新(update)

## 目录的相关操作
cd :变更操作目录
pwd :显示当前目录
 -P :显示出确实的路径，而非使用连结(link)路径
mkdir :建立一个新的目录
 -m :设定档案的权限
 -p :直接将所需要的目录(包括上层目录)循环建立起来
rmdir :删除一个空的目录
 -p :连同上层的空目录也一起删除

## 查阅档案内容
cat [options] filename : 由第一行开始显示档案内容
 -n : 显示行号，连同空白行也有行号
 -A : 相当于 -vET 的整合选项，可列出一些特殊字符而不是空白而已
 -b : 显示行号，仅针对非空白行做行号显示，空白行不标行号
 -E : 将结尾的断行字符$显示出来
 -T : 将[tab]按键以^I显示出来
 -v : 列出一些看不出来的特殊字符

tac : 反向显示，从最后一行开始显示档案内容
nl [options] : 添加行号显示，显示档案内容时，顺道输出行号
 -b : 指定行号指定的方式，主要有两种：
   -b a : 表示不论是否为空行，也同样列出行号;
   -b t : 如果有空行，空的那一行不要列出行号(预设值)
 -n : 列出行号表示的方法，主要有三种：
   -n ln : 行号以左特意方式显示；
   -n rn : 行号以右对齐方式显示，且行号前不加0；
   -n rz : 行号以右对齐方式显示，且行号前加0；
 -w : 行号栏位的占用字符数

可翻页检视
more : 一页一页的显示档案内容
 按键动作  
  *空白键(space) : 代表向下翻一页
  *回车键(Enter) : 代表向下翻一行
  */字符串	: 代表在这个显示的内容当中，向下搜寻『字符串』这个关键字
  *:f		: 代表显示出档名以及目前显示的行数
  *q		: 代表立刻离开more，不再显示该档案内容
  *b 或[ctrl]-b : 代表往前翻页，不过这个动作只对档案有用，对管线无用。

less : 与more类似，但是比more更好的是，可以往前翻页
 按键动作:
  *空白键	: 向下翻动一页
  *[PageDown]	: 向下翻动一页
  *[PageUp]	: 向上翻动一页
  */字符串	: 向下搜寻『字符串』的功能
  *?字符串	: 向上搜寻『字符串』的功能
  *n	: 重复前一个搜寻动作(与/或?有关)
  *N	: 反向的重复前一个搜索动作
  *g	: 前进到这个资料的第一行去
  *G	: 前进到这个资料的最后一行去
  *q	: 离开less程序

资料截取
head [options] 档案 : 取出前面几行，只显示前面几行的内容
 -n : 后面接数字，代表显示几行的意思，预设显示前面十行

tail [options] 档案 : 取出后面几行，只显示最后几行的内容
 -n : 后面接数字，代表显示几行的意思，预设显示最后十行
 -f : 表示持续侦测后面所接的档名，要等到按下[ctrl]-c才会结束tail的侦测

od [options] 档案 : 非纯文字档显示，以二进制的方式读取档案内容
 -t : 后面可以接各种类型的输出，例如：
    a	: 利用预设的字符来输出
    c	: 利用 ASCII 字符来输出
    d[size] : 利用十进制(decimal)来输出资料，每个整数占用 size bytes ;
    f[size] : 利用浮点数值(floating)来输出资料，每个数占用 size bytes ;
    o[size] : 利用八进制(octal)来输出资料，每个整数占用 size bytes ;
    x[size] : 利用十六进制(hexadecimal)来输出资料，每个整数占用 size bytes ;

## 修改档案
touch [options] 档案 : 修改档案三个时间(atime/ctime/mtime)，档案不存在则新建文档
 -a : 仅修订access time
 -c : 仅修改档案的时间，若档案不存在则不建立新档案
 -d : 后面可以接欲修订的日期而不用目前的日期，也可以使用 --date="日期或时间"
 -m : 仅修改mtime
 -t : 后面可以接欲修订的时间而不用目前的时间，格式为[YYYYMMDDhhmm]

## 文档编辑器：
nano

## 打包压缩
gzip [-cdtv#] 文件名
选项与参数：
-c ：将压缩的数据输出到屏幕上，可通过数据流重导向来处理；
-d ：解压缩的参数；
-t ：可以用来检验一个压缩文件的一致性～看看文件有无错误；
-v ：可以显示出原文件/压缩文件的压缩比等信息；
-# ：# 为数字的意思，代表压缩等级，-1 最快，但是压缩比最差、-9 最慢，但是压缩比最好！默认是 -6

zcat 文件名.gz
zmore
zless
zgrep

bzip2 [-cdkzv#] 文件名
选项与参数：
-c ：将压缩的过程产生的数据输出到屏幕上！
-d ：解压缩的参数
-k ：保留原始文件，而不会删除原始的文件喔！
-z ：压缩的参数 （默认值，可以不加）
-v ：可以显示出原文件/压缩文件的压缩比等信息；
-# ：与 gzip 同样的，都是在计算压缩比的参数， -9 最佳， -1 最快！

bzcat,bzmore,bzless,bzgrep

xz [-dtlkc#] 文件名
选项与参数：
-d ：就是解压缩啊！
-t ：测试压缩文件的完整性，看有没有错误
-l ：列出压缩文件的相关信息
-k ：保留原本的文件不删除～
-c ：同样的，就是将数据由屏幕上输出的意思！
-# ：同样的，也有较佳的压缩比的意思！

xzcat,xzmore,xzless,xzgrep

zip
Linux zip 命令用于压缩文件。
zip 是个使用广泛的压缩程序，压缩后的文件后缀名为 .zip。
语法
zip [-AcdDfFghjJKlLmoqrSTuvVwXyz$][-b <工作目录>][-ll][-n <字尾字符串>][-t <日期时间>][-<压缩效率>][压缩文件][文件...][-i <范本样式>][-x <范本样式>]
参数：
    -A 调整可执行的自动解压缩文件。
    -b<工作目录> 指定暂时存放文件的目录。
    -c 替每个被压缩的文件加上注释。
    -d 从压缩文件内删除指定的文件。
    -D 压缩文件内不建立目录名称。
    -f 更新现有的文件。
    -F 尝试修复已损坏的压缩文件。
    -g 将文件压缩后附加在既有的压缩文件之后，而非另行建立新的压缩文件。
    -h 在线帮助。
    -i<范本样式> 只压缩符合条件的文件。
    -j 只保存文件名称及其内容，而不存放任何目录名称。
    -J 删除压缩文件前面不必要的数据。
    -k 使用MS-DOS兼容格式的文件名称。
    -l 压缩文件时，把LF字符置换成LF+CR字符。
    -ll 压缩文件时，把LF+CR字符置换成LF字符。
    -L 显示版权信息。
    -m 将文件压缩并加入压缩文件后，删除原始文件，即把文件移到压缩文件中。
    -n<字尾字符串> 不压缩具有特定字尾字符串的文件。
    -o 以压缩文件内拥有最新更改时间的文件为准，将压缩文件的更改时间设成和该文件相同。
    -q 不显示指令执行过程。
    -r 递归处理，将指定目录下的所有文件和子目录一并处理。
    -S 包含系统和隐藏文件。
    -t<日期时间> 把压缩文件的日期设成指定的日期。
    -T 检查备份文件内的每个文件是否正确无误。
    -u 与 -f 参数类似，但是除了更新现有的文件外，也会将压缩文件中的其他文件解压缩到目录中。
    -v 显示指令执行过程或显示版本信息。
    -V 保存VMS操作系统的文件属性。
    -w 在文件名称里假如版本编号，本参数仅在VMS操作系统下有效。
    -x<范本样式> 压缩时排除符合条件的文件。
    -X 不保存额外的文件属性。
    -y 直接保存符号连接，而非该连接所指向的文件，本参数仅在UNIX之类的系统下有效。
    -z 替压缩文件加上注释。
    -$ 保存第一个被压缩文件所在磁盘的卷册名称。
    -<压缩效率> 压缩效率是一个介于1-9的数值。


unzip [-cflptuvz][-agCjLMnoqsVX][-P <密码>][.zip文件][文件][-d <目录>][-x <文件>] 
unzip [-Z]
参数：
    -c 将解压缩的结果显示到屏幕上，并对字符做适当的转换。
    -f 更新现有的文件。
    -l 显示压缩文件内所包含的文件。
    -p 与-c参数类似，会将解压缩的结果显示到屏幕上，但不会执行任何的转换。
    -t 检查压缩文件是否正确。
    -u 与-f参数类似，但是除了更新现有的文件外，也会将压缩文件中的其他文件解压缩到目录中。
    -v 执行是时显示详细的信息。
    -z 仅显示压缩文件的备注文字。
    -a 对文本文件进行必要的字符转换。
    -b 不要对文本文件进行字符转换。
    -C 压缩文件中的文件名称区分大小写。
    -j 不处理压缩文件中原有的目录路径。
    -L 将压缩文件中的全部文件名改为小写。
    -M 将输出结果送到more程序处理。
    -n 解压缩时不要覆盖原有的文件。
    -o 不必先询问用户，unzip执行后覆盖原有文件。
    -P<密码> 使用zip的密码选项。
    -q 执行时不显示任何信息。
    -s 将文件名中的空白字符转换为底线字符。
    -V 保留VMS的文件版本信息。
    -X 解压缩时同时回存文件原来的UID/GID。
    [.zip文件] 指定.zip压缩文件。
    [文件] 指定要处理.zip压缩文件中的哪些文件。
    -d<目录> 指定文件解压缩后所要存储的目录。
    -x<文件> 指定不要处理.zip压缩文件中的哪些文件。
    -Z unzip -Z等于执行zipinfo指令。

p7zip

tar
tar [-z|-j|-J] [cv] [-f 待创建的新文件名] filename... #==打包与压缩
tar [-z|-j|-J] [tv] [-f 既有的 tar文件名] #==察看
tar [-z|-j|-J] [xv] [-f 既有的 tar文件名] [-C 目录] #==解压缩

选项与参数：
-c ：创建打包文件，可搭配 -v 来察看过程中被打包的文件名（filename）
-t ：察看打包文件的内容含有哪些文件名，重点在察看“文件名”就是了；
-x ：解打包或解压缩的功能，可以搭配 -C （大写） 在特定目录解开
特别留意的是， -c, -t, -x 不可同时出现在一串命令行中。

-z ：通过 gzip 的支持进行压缩/解压缩：此时文件名最好为 *.tar.gz
-j ：通过 bzip2 的支持进行压缩/解压缩：此时文件名最好为 *.tar.bz2
-J ：通过 xz 的支持进行压缩/解压缩：此时文件名最好为 *.tar.xz
特别留意， -z, -j, -J 不可以同时出现在一串命令行中 

-v ：在压缩/解压缩的过程中，将正在处理的文件名显示出来！
-f filename：-f 后面要立刻接要被处理的文件名！建议 -f 单独写一个选项啰！（比较不会忘记）
-C 目录 ：这个选项用在解压缩，若要在特定目录解压缩，可以使用这个选项。
其他后续练习会使用到的选项介绍：
-p（小写） ：保留备份数据的原本权限与属性，常用于备份（-c）重要的配置文件
-P（大写） ：保留绝对路径，亦即允许备份数据中含有根目录存在之意；
--exclude=FILE：在压缩的过程中，不要将 FILE 打包！
