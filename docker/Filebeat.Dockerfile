# FROM docker.elastic.co/beats/filebeat:7.9.2
# COPY config/filebeat.yml /usr/share/filebeat/filebeat.yml
# USER root
# # RUN chown -R root /usr/share/filebeat/
# RUN chown root:filebeat /usr/share/filebeat/
# # RUN chown -R root:filebeat /usr/share/filebeat/
# RUN chmod -R go-w /usr/share/filebeat/
# USER filebeat

FROM docker.elastic.co/beats/filebeat:7.9.2
COPY config/filebeat.yml /usr/share/filebeat/filebeat.yml
# COPY ./mock-logs /usr/share/filebeat/mock-logs
USER root
# RUN chown root:filebeat /usr/share/filebeat/filebeat.yml
RUN mkdir /usr/share/filebeat/dockerlogs
RUN chown -R root /usr/share/filebeat/
# RUN chmod -R go-w /usr/share/filebeat/
