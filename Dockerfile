FROM base/archlinux:latest
RUN pacman -Sy -q
RUN pacman -S --noconfirm -q postgresql-libs ruby
RUN mkdir /backup
COPY dump /root/
RUN chmod u+x /root/dump
ENTRYPOINT ["/root/dump"]

