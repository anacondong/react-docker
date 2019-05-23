# base image
FROM node:9.11

# set working directory
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

# install and cache app dependencies
COPY package.json /usr/src/app/
RUN npm install

ADD src /usr/src/app/src
ADD public /usr/src/app/public

# start app
CMD ["npm", "run", "start"]
EXPOSE 3000