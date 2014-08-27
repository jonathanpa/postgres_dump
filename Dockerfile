FROM base/archlinux:latest
RUN pacman -Sy
RUN pacman -S --noconfirm postgresql-libs
