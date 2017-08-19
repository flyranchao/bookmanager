# BU1-PSW 图书共享
[论坛讨论链接](http://www.pld1.local/xiunobbs/?thread-58.htm)
####################################################################
注解：book.list排版
类别    编号         书名                      使用者
####################################################################
１．使用者表示目前此书在谁手里。（而不是拥有者）
２．类别划分如下。
programming：编程语言  extracurricular：课外读物   app：应用编程 
driver：驱动编程 net：网络编程    kernel：内核理解　 other:其他类　
###################################################################

使用方法
* 查找图书:		```grep "book_name" book.list```
* 如：　grep linux   book.list(按书名模糊查找)
        grep app     book.list（按类别查找）
        grep ranchao book.list(按使用者查找)
　此外也支持按编号和状态查找，但是效果不理想，不建议。


* 借书:			```./bb.sh "book_name" or ./bb.sh "book_name" "usr_name" or ./bb.sh "book_name" "usr_name" "book_list"```


* 同步:			使用 git 同步，所有人只同步 book.list，或者有更好的方法，比如 list 文件放到服务器上，然后脚本操作全部封装到同一个文件
* 当然，按照格式直接修改 book.list 也可以，简单粗暴

####################################################################
注解：Development_board.list排版
####################################################################
１．类别：平台型号。
２．编号：平台的唯一标识。
３．使用者：平台目前所在处。
####################################################################

使用方法
*查找平台：　　grep   类别　　Development_board.list
　　如：　　　 grep   R40     Development_board.list

借用平台：　　 ./bb.sh  R40   or  ./bb.sh  R40  usr_name


> 上述所有 book_name 均可采用书名的一部分，但是最好是可以有效标识书籍的部分，比如对与 lsbqdxj1_ldd1_LINUX设备驱动详解1，查书的时候可以输ldd什么的，借书的时候就要带上编号，比如 ldd1，能够唯一标识的字
## 使用准备
* 修改 bb.sh 中的默认 usr_name, book_list, book_list最好采用绝对路径，方便将脚本放到usrbin或者环境变量后在任意目录使用

> 跟之前的方式不是一个系统，有兴趣的可以拉取之前的提交看下，或者拉取 mod_git 分支查看
问题和建议请在论坛上提问，更好的是随手写个脚本自行解决，然后分享出来
[论坛讨论链接](http://www.pld1.local/xiunobbs/?thread-58.htm)
