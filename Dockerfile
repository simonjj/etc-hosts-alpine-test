FROM alpine


COPY myhosts /root/myhosts.build
RUN cat /root/myhosts.build >> /etc/hosts
RUN cat /etc/hosts

COPY start.sh /root/start.sh

CMD ["/root/start.sh"]
