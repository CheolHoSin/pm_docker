FROM keymetrics/pm2

COPY src src/
COPY package.json .
COPY ecosystem.config.js .

RUN npm install
RUN npm install pm2 -g

CMD ["pm2-runtime", "start", "ecosystem.config.js"]
