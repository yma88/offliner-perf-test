FROM centos

MAINTAINER Ying Ma <yma@redhat.com>
ENV OFFLINER_HOME=/opt/offliner

RUN yum install -y --setopt=tsflags=nodocs java-1.8.0-openjdk-devel && \
    yum clean all -y

RUN groupadd -r offliner -f -g 1001
RUN useradd -u 1001 -r -g offliner -m -d ${OFFLINER_HOME} offliner
RUN chown -R offliner:offliner ${OFFLINER_HOME}
RUN chmod -R 777 ${OFFLINER_HOME}

USER offliner
ADD resources/execute.sh ${OFFLINER_HOME}/execute.sh
ADD resources/honeycomb.properties ${OFFLINER_HOME}/honeycomb.properties
ADD resources/manifest-2k ${OFFLINER_HOME}/manifest-2k
ADD resources/offliner-2.0-SNAPSHOT.jar ${OFFLINER_HOME}/offliner-2.0-SNAPSHOT.jar


WORKDIR ${OFFLINER_HOME}

ENTRYPOINT ["sh", "/opt/offliner/execute.sh"]
