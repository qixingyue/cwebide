FROM centos
RUN yum update -y && yum install git wget -y &&  wget https://dl.yarnpkg.com/rpm/yarn.repo -O /etc/yum.repos.d/yarn.repo && \
curl --silent --location https://rpm.nodesource.com/setup_7.x | bash - && yum install nodejs -y && \
yum install yarn maven-3.0.5-17.el7.noarch  -y  && mkdir /ide && cd /ide \
&& git clone https://github.com/Coding/WebIDE.git && cd WebIDE && \
git submodule init &&  git submodule update && ./ide.sh build

WORKDIR /ide/WebIDE
RUN yum -y install zsh
RUN sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ENV SHELL zsh
CMD ["./ide.sh","run"]
