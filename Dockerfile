# For building standalone docker containers for Cloud Run or similar
FROM python:3.9-buster

ENV DJANGO_SUPERUSER_PASSWORD=default
ENV DJANGO_SUPERUSER_EMAIL=admin@example.org
ENV DJANGO_SUPERUSER_USERNAME=admin

COPY . /home/docker
WORKDIR /home/docker

# Install pip packages
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

RUN mkdir -p /var/log/pagemill

WORKDIR /home/docker/pagemill

# Cleanup
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/src/mezzanine
RUN rm -rf /root/.cache

RUN chmod -R 755 /home/docker

EXPOSE 8000
ENTRYPOINT ["/home/docker/docker-entrypoint.sh"]
CMD ["/home/docker/pagemill/deploy/gunicorn_start"]
