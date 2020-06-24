FROM maven:3.6.3-jdk-11-slim

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

#Start application
WORKDIR /usr/src/mymaven
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["bash"]