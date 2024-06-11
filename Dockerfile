# For building standalone docker containers for Cloud Run or similar
FROM python:3.9-buster

ENV DJANGO_SUPERUSER_PASSWORD=default
ENV DJANGO_SUPERUSER_EMAIL=admin@example.org
ENV DJANGO_SUPERUSER_USERNAME=admin

COPY . /home/docker
WORKDIR /home/docker

RUN apt-get update && apt-get install -y supervisor

# Install pip packages
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

RUN cp pagemill/deploy/pagemill.conf /etc/supervisor/conf.d/pagemill.conf

RUN mkdir -p /var/log/pagemill

WORKDIR /home/docker/pagemill

# Cleanup
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/src/mezzanine
RUN rm -rf /root/.cache

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

EXPOSE 8000
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["/usr/bin/supervisord", "-n"]
