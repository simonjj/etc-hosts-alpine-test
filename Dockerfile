FROM alpine


COPY myhosts /root/myhosts
RUN cat /root/myhosts >> /etc/hosts
RUN cat /etc/hosts

COPY start.sh /root/start.sh

CMD ["/root/start.sh"]
