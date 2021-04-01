build
	是以so形式进行编译的
1.1 设计方向
1.	将所有makefile放在build目录下
2.	生成的中间目标.o文件、依赖的.d文件，so以及bin文件分别放在output下的obj、dep、lib、bin目录下
3.	分为顶层mk、运行mk、子模块mk、以及公共定义mk、差异定义mk五大类。
	a)	其中顶层mk负责 定义所有依赖的子mk，以及保证运行每一个子mk
	b)	执行mk负责模块so或者bin文件规则的定义，目标文件定义、以及清理工作，做到可以让每一个模块include
	c)	子模块的mk只负责定义源文件SRCS、以及头文件搜索目录INCLUDE、依赖的so LIBS以及搜索的路径LIBS_INCLUDE
	d)	差异定义mk, app和so的最后在链接阶段是不同的，APP不需要shared 链接选项。
	e)	公共定义mk负责定义CC LD RM等命令变量以及CFLAG等命令参数变量

build_lib.a
	是以静态库形式组织编译的，没有太大的区别，设计原则相同



——————————————————————————————————————如何使用git————————————————————————
一：从本地建仓
1.配置用户名和密码
	git config --global user.name "yuyunbo1"
	git config --global user.email "18774833892@163.com"
2.建立git仓库
	git init
3.添加需要上传到github的代码到本地仓库
	git add 
4.commit到仓库
	git commit -m "第一次提交"
5.去github网站上创建自己的Repository
6.将本地的仓库关联到github上
	git remote add origin git@github com:leiphp/awesome-python3-webapp.git
7.传代码到github远程仓库
	git push -u origin master
	会提示输入用户名密码等
8.最后
	git pull --rebase origin master


二：git基本使用：
1：添加修改
	git add *
2.提交本地
	git commit -m "提交注释"
3.提交
	git push origin master     origin表示远端主机，master是本地分支名
4.拉取代码
	git pull origin master     originorigin表示远端主机，master是远端分支名

三：避免每次提交代码输入密码
	在.git文件夹下执行命令：git config  credential.helper store                        
	这里没有--global意思是指只对这个仓库生效，建议以后都不要加--global
	让代码配置以仓库为单位存储就好，设置成全局不灵活

四：关闭开机自启动项
	wim+R
	msconfig
	点击启动页，勾选即可