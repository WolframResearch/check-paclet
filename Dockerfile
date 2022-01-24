# Container image that runs your code
FROM wolframresearch/wolframengine:13.0.0

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.wls /entrypoint.wls

# Set executable permission for the entry point
USER root
RUN chmod +x /entrypoint.wls
USER wolframengine

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.wls"]