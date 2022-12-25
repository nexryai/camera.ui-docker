FROM clearlinux/node

ENTRYPOINT camera.ui

RUN npm i -g camera.ui@latest --unsafe-perm
