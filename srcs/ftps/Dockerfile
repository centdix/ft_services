FROM alpine:3.11

#copy files
COPY start.sh /start.sh
COPY vsftpd.conf /vsftpd.conf

#install 
RUN apk add vsftpd openrc

#config
RUN rm /etc/vsftpd/vsftpd.conf \
 && mv vsftpd.conf /etc/vsftpd/
 
#accessible files
RUN mkdir /srv/ftp \
 && chown nobody:nogroup /srv/ftp \
 && echo "anon" > /srv/ftp/anon.txt \
 && echo "coucou" > /srv/ftp/coucou.txt

#enable services
RUN openrc \
 && touch /run/openrc/softlevel

EXPOSE 21

CMD sh start.sh