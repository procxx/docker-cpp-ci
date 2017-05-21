FROM pritunl/archlinux:latest
RUN pacman -Syu --noconfirm
RUN pacman -Sy --noconfirm sudo base-devel gettext cmake git clang clang-tools-extra ninja boost libsodium
RUN echo "nobody ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN pacman -Sy ccache --noconfirm
RUN (echo "y"; echo "y") | pacman -Scc

# Location where travis config stored
ENV TRAVIS_CONFIG_PATH /travis
VOLUME /travis

# Generally the current working dir will be used as the repo volume
VOLUME /repo
WORKDIR /repo
