#Dockerfile centos-java
# ѡ��һ�����е�os������Ϊ����
FROM wuyl/centos-ssh:latest

# ���������
MAINTAINER wuyl

# ��װwget
RUN yum install -y wget

# ����jdk8����װ
RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" download.oracle.com/otn-pub/java/jdk/8u181-b13/96a7b8442fe848ef90c96a2fad6ed6d1/jdk-8u181-linux-x64.rpm
RUN rpm -ivh jdk-8u181-linux-x64.rpm

# ��װepel�ֿ�
RUN yum install -y epel-release
