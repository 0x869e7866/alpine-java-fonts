# AlpineLinux with a glibc-2.27-r0 and Oracle Java 8
FROM alpine-java

MAINTAINER Corbin <peixiaobin316@gmail.com>

# add alpine fonts
RUN apk add --update fontconfig wqy-zenhei --update-cache --repository http://nl.alpinelinux.org/alpine/edge/testing --allow-untrusted
# RUN apk add --update ttf-dejavu fontconfig
# RUN apk add --update font-adobe-100dp ttf-dejavu fontconfig
# RUN apk --no-cache add --update font-adobe-100dpi ttf-dejavu msttcorefonts-installer fontconfig && \
#    update-ms-fonts && \
#    fc-cache -f

#COPY ./fonts/ /usr/share/fonts/ttf-dejavu
COPY ./fonts/ /usr/share/fonts/
RUN chmod a+r /usr/share/fonts/PingFang.ttf

ENV LANG=C.UTF-8
# EOF