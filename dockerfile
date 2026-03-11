FROM redhat/ubi9
MAINTAINER "Prasad"
RUN touch /opt/file1 /opt/file2
RUN mkdir /opt/dir1
RUN yum install git -y
RUN git config --global user.name "Prasad"
RUN git config --global user.email "prasad@gmail.com"
WORKDIR /opt
RUN git clone https://github.com/polarapu/Batch113.git
RUN yum install wget -y
RUN wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.52/bin/apache-tomcat-10.1.52.tar.gz
RUN tar -xvf apache-tomcat-10.1.52.tar.gz
COPY tomcat-users.xml /opt/apache-tomcat-10.1.52/conf/
#ENV export JAVA_HOME=
#ENV export
EXPOSE 8989
#CMD git --version
#ENTRYPOINT git --version
