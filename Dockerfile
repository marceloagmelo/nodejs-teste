FROM marceloagmelo/nodejs-6.5.0:latest
MAINTAINER marceloagmelo@gmail.com

USER root

ENV NODEJS_PORT 8080

COPY Dockerfile $IMAGE_SCRIPTS_HOME/Dockerfile
#ADD app $APP_HOME

RUN cd $IMAGE_SCRIPTS_HOME; ./download_artifact.sh

RUN chown -R nodejs:nodejs $APP_HOME && \
    chown -R nodejs:nodejs $IMAGE_SCRIPTS_HOME

EXPOSE $NODEJS_PORT

USER nodejs

WORKDIR $IMAGE_SCRIPTS_HOME

ENTRYPOINT [ "./control.sh" ]
CMD [ "start" ]
