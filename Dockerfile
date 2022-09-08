FROM cloudbees/cloudbees-core-agent:2.346.4.1

USER root

RUN dnf install -y --nodocs jq && \
    dnf install -y zip && \
    curl -L https://github.com/mikefarah/yq/releases/download/v4.27.3/yq_linux_amd64 > /usr/bin/yq && \
    chmod +x /usr/bin/yq

USER 1000
