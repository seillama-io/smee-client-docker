FROM registry.redhat.io/rhel8/nodejs-18-minimal:1

RUN npm install --global smee-client
ENTRYPOINT ["smee"]
CMD ["--help"]
