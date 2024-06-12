FROM gitpod/workspace-full

USER root

RUN apt-get update && apt-get install -yq \
    libncurses5 \
    libncursesw5 \
    libtinfo5 \
    libcurl4-openssl-dev \
    libcurl4-openssl-dev \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/*

USER gitpod

RUN bash -c ". /home/gitpod/.sdkman/bin/sdkman-init.sh && \
    sdk install java 8.0.412-zulu && \
    sdk default java 8.0.412-zulu"
