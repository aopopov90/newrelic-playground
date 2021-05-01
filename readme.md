## build image
docker build -t new-relic .

## deploy image
docker run \
    -d \
    --name newrelic-infra \
    --net=host \
    --cap-add=SYS_PTRACE \
    -v "/:/host:ro" \
    -v "/var/run/docker.sock:/var/run/docker.sock" \
    new-relic

# cli
https://github.com/newrelic/newrelic-cli/releases/download/v0.23.2/newrelic-cli_0.23.2_Linux_x86_64.tar.gz

