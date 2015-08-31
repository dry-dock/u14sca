FROM gcr.io/dry-dock/u14jav:prod

ADD . /tmp

RUN /tmp/install.sh && rm -rf /tmp
