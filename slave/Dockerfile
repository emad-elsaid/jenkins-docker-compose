FROM openjdk:8

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y openssh-server ruby
RUN sed -i 's|session required pam_loginuid.so|session optional pam_loginuid.so|g' /etc/pam.d/sshd
RUN mkdir -p /var/run/sshd
RUN adduser --quiet jenkins
RUN echo "jenkins:jenkins" | chpasswd
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
