FROM python:3.9-buster

# Install debian system packages / prerequisites
RUN apt-get update && apt-get install -y \
    postgresql-11 \
    postgresql-client-11 \
    openssh-client \
    openssh-server \
    supervisor \
    rsync

ADD ./requirements.txt /requirements.txt

# Install pip packages
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Install SSH for remote PyCharm debugging
RUN mkdir /var/run/sshd
RUN echo 'root:screencast' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

# Add docker user for use with SSH debugging
RUN useradd -m docker \
    && echo 'docker:docker' | chpasswd

# Cleanup
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/src/mezzanine

# Set entry working directory 
WORKDIR /home/docker/pagemill

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
