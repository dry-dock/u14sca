FROM drydock/u14jav:prod

ADD . /u14sca

RUN /u14sca/install.sh
