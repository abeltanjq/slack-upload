FROM debian:9.6-slim

LABEL "com.github.actions.name"="Upload to Slack"
LABEL "com.github.actions.description"="Upload files to Slack"

LABEL version="0.1.0"
LABEL repository="http://github.com/abeltanjq/slack-upload"
LABEL homepage="http://github.com/abeltanjq/slack-upload"
LABEL maintainer="Abel Tan <abeltanjq@gmail.com>"

RUN apt-get update && apt-get install -y curl

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]