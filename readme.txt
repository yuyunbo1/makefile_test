build
	����so��ʽ���б����
1.1 ��Ʒ���
1.	������makefile����buildĿ¼��
2.	���ɵ��м�Ŀ��.o�ļ���������.d�ļ���so�Լ�bin�ļ��ֱ����output�µ�obj��dep��lib��binĿ¼��
3.	��Ϊ����mk������mk����ģ��mk���Լ���������mk�����춨��mk����ࡣ
	a)	���ж���mk���� ����������������mk���Լ���֤����ÿһ����mk
	b)	ִ��mk����ģ��so����bin�ļ�����Ķ��壬Ŀ���ļ����塢�Լ�������������������ÿһ��ģ��include
	c)	��ģ���mkֻ������Դ�ļ�SRCS���Լ�ͷ�ļ�����Ŀ¼INCLUDE��������so LIBS�Լ�������·��LIBS_INCLUDE
	d)	���춨��mk, app��so����������ӽ׶��ǲ�ͬ�ģ�APP����Ҫshared ����ѡ�
	e)	��������mk������CC LD RM����������Լ�CFLAG�������������

build_lib.a
	���Ծ�̬����ʽ��֯����ģ�û��̫����������ԭ����ͬ



�������������������������������������������������������������������������������ʹ��git������������������������������������������������
һ���ӱ��ؽ���
1.�����û���������
	git config --global user.name "yuyunbo1"
	git config --global user.email "18774833892@163.com"
2.����git�ֿ�
	git init
3.�����Ҫ�ϴ���github�Ĵ��뵽���زֿ�
	git add 
4.commit���ֿ�
	git commit -m "��һ���ύ"
5.ȥgithub��վ�ϴ����Լ���Repository
6.�����صĲֿ������github��
	git remote add origin git@github com:leiphp/awesome-python3-webapp.git
7.�����뵽githubԶ�ֿ̲�
	git push -u origin master
	����ʾ�����û��������
8.���
	git pull --rebase origin master


����git����ʹ�ã�
1������޸�
	git add *
2.�ύ����
	git commit -m "�ύע��"
3.�ύ
	git push origin master     origin��ʾԶ��������master�Ǳ��ط�֧��
4.��ȡ����
	git pull origin master     originorigin��ʾԶ��������master��Զ�˷�֧��

��������ÿ���ύ������������
	��.git�ļ�����ִ�����git config  credential.helper store                        
	����û��--global��˼��ָֻ������ֿ���Ч�������Ժ󶼲�Ҫ��--global
	�ô��������Բֿ�Ϊ��λ�洢�ͺã����ó�ȫ�ֲ����

�ģ��رտ�����������
	wim+R
	msconfig
	�������ҳ����ѡ����