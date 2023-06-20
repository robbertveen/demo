
FROM ubuntu:16.04

RUN apt-get update && apt-get install -y openssh-server sudo python unzip
RUN mkdir /var/run/sshd
RUN echo 'root:screencast' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]

#  ENV TZ=europe/amsterdam \
#     DEBIAN_FRONTEND=noninteractive
#  RUN apt-get update 
#  RUN apt-get install tzdata
#  RUN apt-get install -y python3-jinja2 git

#  # Clone ansible repo (could also add the ansible PPA and do an apt-get install instead)
#  # RUN git clone http://github.com/ansible/ansible.git /tmp/ansible

#  # Set variables for ansible
#  WORKDIR /tmp/ansible
#  ENV PATH /tmp/ansible/bin:/sbin:/usr/sbin:/usr/bin
#  ENV ANSIBLE_LIBRARY /tmp/ansible/library
#  ENV PYTHONPATH /tmp/ansible/lib:$PYTHON_PATH

#  # add playbooks to the image. This might be a git repo instead
#  ADD playbook.yml /tmp/ansible/
#  ADD inventory /tmp/ansible/hosts
#  WORKDIR /tmp/ansible

 # Run ansible using the site.yml playbook 
 # RUN ansible-playbook /etc/ansible/site.yml -c local