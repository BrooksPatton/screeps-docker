FROM node:9
MAINTAINER Brooks Patton
RUN useradd -d /home/screeps -m screeps
RUN chown -R screeps /usr/local/share/man
RUN chown -R screeps /usr/local/bin
RUN chown -R screeps /usr/local/include/node
RUN chown -R screeps /usr/local/lib/node_modules
RUN chown -R screeps:screeps /home/screeps
ADD ./api-key /home/screeps
ADD ./initScreeps.sh /home/screeps
ADD ./mongo-redis-config /home/screeps
USER screeps
RUN npm i -g screeps
WORKDIR /home/screeps
RUN ./initScreeps.sh
RUN mkdir mods
ADD ./mods/package.json /home/screeps/mods
RUN npm i --prefix ./mods screepsmod-mongo
ADD ./mods.json /home/screeps
EXPOSE 21025
EXPOSE 21026
CMD screeps start