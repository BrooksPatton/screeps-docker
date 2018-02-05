FROM node:9
MAINTAINER Brooks Patton
RUN useradd -d /home/screeps -m screeps
RUN chown -R screeps /usr/local/share/man
RUN chown -R screeps /usr/local/bin
RUN chown -R screeps /usr/local/include/node
RUN chown -R screeps /usr/local/lib/node_modules
RUN chown -R screeps:screeps /home/screeps
USER screeps
RUN npm i -g screeps
CMD screeps cli -h 