FROM pritunl/archlinux:latest
RUN pacman -Syu --noconfirm
RUN pacman -Sy --noconfirm sudo base-devel gettext cmake git clang clang-tools-extra ninja boost
RUN echo "nobody ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN pacman -Sy ccache --noconfirm
RUN (echo "y"; echo "y") | pacman -Scc
