FROM drydock/u14jav:prod

ADD . /tmp

RUN /tmp/install.sh && rm -rf /tmp
