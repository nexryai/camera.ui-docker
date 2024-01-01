FROM clearlinux/node:18

ENTRYPOINT camera.ui

RUN npm i -g camera.ui@latest --unsafe-perm
