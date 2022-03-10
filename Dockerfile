FROM docker
COPY --from=docker/buildx-bin /buildx /usr/libexec/docker/cli-plugins/docker-buildx
COPY --from=tonistiigi/binfmt /usr/bin/ /usr/bin/
RUN /usr/bin/binfmt --install all

