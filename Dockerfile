FROM node:6.9.1
MAINTAINER Brooks Patton <scgryphon@sbcglobal.net>
RUN useradd -d /home/screeps -m screeps
RUN chown -R screeps /usr/local/share/man
RUN chown -R screeps /usr/local/bin
RUN chown -R screeps /usr/local/include/node
RUN chown -R screeps /usr/local/lib/node_modules
RUN chown -R screeps:screeps /home/screeps
VOLUME /home/screeps
USER screeps
RUN npm i -g screeps
WORKDIR /home/screeps
RUN ls -al
CMD ["screeps", "start"]
EXPOSE 21025
EXPOSE 21026
