# Container image that runs your code
FROM wolframresearch/wolframengine:13.0.0

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Set executable permission for the entry point
USER root
RUN chmod +x /entrypoint.sh
USER wolframengine

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]