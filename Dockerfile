FROM node:18-alpine

ARG UID="948"
ARG GID="948"

RUN apk add --no-cache ca-certificates tini \
 && npm install -g camera.ui@latest \
 && addgroup -g "${GID}" app \
 && adduser -u "${UID}" -G app -D -h /app app

USER app
WORKDIR /app

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["camera.ui"]
