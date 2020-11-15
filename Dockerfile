# Big image but it's cached on gitpod nodes already
FROM gitpod/workspace-full:latest

ARG VENDOR
ARG BUILD_DATE
ARG GIT_REPO
ARG VCS_REF
ARG VERSION
ARG TITLE="gitpod-helm"
ARG DESCRIPTION="Gitpod.io image for Helm chart developement"
ARG DOCUMENTATION
ARG AUTHOR
ARG LICENSE="MIT"
LABEL org.opencontainers.image.created="${BUILD_DATE}" \
      org.opencontainers.image.url="${GIT_REPO}" \
      org.opencontainers.image.source="${GIT_REPO}" \
      org.opencontainers.image.version="${VERSION}" \
      org.opencontainers.image.revision="${VCS_REF}" \
      org.opencontainers.image.vendor="${VENDOR}" \
      org.opencontainers.image.title="${TITLE}" \
      org.opencontainers.image.description="${DESCRIPTION}" \
      org.opencontainers.image.documentation="${DOCUMENTATION}" \
      org.opencontainers.image.authors="${AUTHOR}" \
      org.opencontainers.image.licenses="${LICENSE}"

# Install tools as user
USER gitpod
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Install helper tools
RUN brew update && brew install \
    kubectl kubernetes-helm helmfile \
    instrumenta/instrumenta/kubeval kube-score/tap/kube-score k14s/tap/kbld \
    && brew cleanup

# Install a couple plugins
RUN helm plugin install https://github.com/helm/helm-2to3 && \
    helm plugin install https://github.com/hypnoglow/helm-s3.git && \
    helm plugin install https://github.com/databus23/helm-diff

COPY .gitpod.bashrc /home/gitpod/.bashrc.d/custom

# Give back control
USER root
#  and revert back to default shell
#  otherwise adding Gitpod Layer will fail
SHELL ["/bin/sh", "-c"]
