FROM ubuntu:20.04

ARG USER=lmussier
ARG UID=1000
ARG GID=1000

RUN apt-get update && apt-get install -y --no-install-recommends xorg openbox libxkbcommon-x11-0 terminator
RUN groupadd -g ${GID} -o ${USER}
RUN useradd ${USER} --create-home --uid ${UID} --gid ${GID}
USER ${USER}
WORKDIR /home/${USER}
