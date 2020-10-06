FROM dspedgeregistrydev.azurecr.io/amd64/esx_base_ubuntu_dev:v1.0.4

ARG USER=root
ARG UID=1000
ARG GID=1000

RUN apt-get update && apt-get install -y --no-install-recommends xorg openbox \
    libxkbcommon-x11-0 libxcb-randr0 libxcb-xtest0 libxcb-xinerama0 libxcb-shape0 libxcb-xkb1 libxcb-keysyms1 libxcb-image0 libxcb-icccm4 libxcb-render-util0\
    terminator 
RUN groupadd -g ${GID} -o ${USER}
RUN useradd ${USER} --create-home --uid ${UID} --gid ${GID}
USER ${USER}
WORKDIR /home/${USER}
