FROM alpine:3.11

#copy files
COPY start.sh /start.sh
COPY vsftpd.conf /vsftpd.conf
COPY vsftpd.pem /etc/ssl/private/vsftpd.pem

#install 
RUN apk add vsftpd openrc

#config
RUN rm /etc/vsftpd/vsftpd.conf \
 && mv vsftpd.conf /etc/vsftpd/

#enable services
RUN openrc \
 && touch /run/openrc/softlevel

EXPOSE 21

CMD sh start.sh