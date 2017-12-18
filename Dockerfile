FROM centos:7
RUN yum update -y && yum install git -y
RUN wget https://dl.yarnpkg.com/rpm/yarn.repo -O /etc/yum.repos.d/yarn.repo
RUN yum install yarn

