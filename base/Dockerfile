FROM debian:stretch
MAINTAINER Jesse Rosenberger

ENV METEORD_DIR /opt/meteord
COPY scripts $METEORD_DIR

ARG NODE_VERSION
ENV NODE_VERSION ${NODE_VERSION:-12.20.0}
ONBUILD ENV NODE_VERSION ${NODE_VERSION:-12.20.0}

RUN bash $METEORD_DIR/lib/install_base.sh
RUN bash $METEORD_DIR/lib/install_node.sh
RUN bash $METEORD_DIR/lib/install_wkhtmltopdf.sh
RUN bash $METEORD_DIR/lib/install_qpdf.sh
RUN bash $METEORD_DIR/lib/cleanup.sh

EXPOSE 80
RUN chmod +x $METEORD_DIR/run_app.sh
ENTRYPOINT exec $METEORD_DIR/run_app.sh
