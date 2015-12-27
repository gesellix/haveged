FROM alpine:3.3
MAINTAINER Tobias Gesellchen <tobias@gesellix.de> (@gesellix)

RUN apk -U add haveged

ENTRYPOINT ["haveged"]
CMD ["-F", "-v", "1", "-w", "1024"]
