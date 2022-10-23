FROM       node
RUN        useradd roboshop
RUN        mkdir /app
RUN        chown roboshop /app
WORKDIR    /app
ADD        server.js /app
ADD        node_modules/ /app/node_modules
RUN        chown roboshop:roboshop -R /app
USER       roboshop
ENTRYPOINT ["node", "server.js"]
