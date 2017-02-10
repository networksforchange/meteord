FROM debian:stretch
MAINTAINER Jesse Rosenberger

ENV METEORD_DIR /opt/meteord
COPY scripts $METEORD_DIR

ARG NODE_VERSION
ENV NODE_VERSION ${NODE_VERSION:-12.16.1}
ONBUILD ENV NODE_VERSION ${NODE_VERSION:-12.16.1}

RUN bash $METEORD_DIR/lib/install_base.sh
RUN bash $METEORD_DIR/lib/install_node.sh
RUN bash $METEORD_DIR/lib/install_phantomjs.sh

RUN apt-get update
RUN curl -O http://download.gna.org/wkhtmltopdf/0.12/0.12.3/wkhtmltox-0.12.3_linux-generic-amd64.tar.xz
RUN tar -xf wkhtmltox-0.12.3_linux-generic-amd64.tar.xz
RUN apt-get install libXrender1 -y
RUN mv ./wkhtmltox/bin/wkhtmltopdf /bin

RUN bash $METEORD_DIR/lib/cleanup.sh

EXPOSE 80
RUN chmod +x $METEORD_DIR/run_app.sh
ENTRYPOINT exec $METEORD_DIR/run_app.sh
