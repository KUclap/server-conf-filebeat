FROM docker.elastic.co/beats/filebeat:7.9.2
COPY config/filebeat.yml /usr/share/filebeat/filebeat.yml
COPY ./mock-logs /usr/share/filebeat/mock-logs
USER root
# RUN chown root:filebeat /usr/share/filebeat/filebeat.yml
RUN mkdir /usr/share/dockerlogs
RUN chown -R root /usr/share/filebeat/
RUN chmod -R go-w /usr/share/filebeat/
