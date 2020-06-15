FROM maven:3.6.3-jdk-11-slim
#ENV JAVA_TOOL_OPTIONS "-agentlib:jdwp"

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
WORKDIR /usr/src/mymaven
#Start application
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["bash"]