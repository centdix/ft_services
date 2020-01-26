FROM nginx:stable-alpine

#copy files
COPY start.sh /start.sh
COPY sshd_config /sshd_config

#install 
RUN apk add openssh openrc

#enable services
RUN openrc \
 && touch /run/openrc/softlevel

#config
RUN rm /etc/ssh/sshd_config \
 && mv sshd_config /etc/ssh/ 

EXPOSE 4000

CMD sh start.sh