FROM google/cloud-sdk:319.0.0-alpine
RUN gcloud components install bigtable beta 
EXPOSE 8086
ENTRYPOINT gcloud beta emulators bigtable start --host-port=0.0.0.0:8086

