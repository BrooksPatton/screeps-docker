FROM node:9
MAINTAINER Brooks Patton
RUN useradd -m screeps
RUN mkdir /data
ADD ./api-key /data
ADD ./initScreeps.sh /data
ADD ./mongo-redis-config /data
RUN chown -R screeps:screeps /data
USER screeps
WORKDIR /data
RUN npm init -y
RUN npm i screeps
RUN ./initScreeps.sh
RUN mkdir mods
ADD ./mods/package.json /data/mods
RUN npm i --prefix ./mods screepsmod-mongo
ADD ./mods.json /data
EXPOSE 21025
EXPOSE 21026
CMD npx screeps start
