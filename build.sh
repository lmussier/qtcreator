docker build --build-arg UID=$(id -u) --build-arg GID=$(id -g) --build-arg USER=${USER} . -t test
