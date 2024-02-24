FROM alpine:3.19.1

# Install bash
RUN apk add bash

# https://github.com/meganz/MEGAcmd/issues/623
RUN cat /proc/sys/kernel/random/uuid > /etc/machine-id

# Install MEGAcmd
# https://github.com/meganz/MEGAcmd/blob/master/UserGuide.md
# https://pkgs.alpinelinux.org/package/edge/community/ppc64le/megacmd
RUN apk add megacmd

# Run the background server
ENTRYPOINT ["mega-cmd-server"]
