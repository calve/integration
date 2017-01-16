FROM debian:jessie

# Install Python:
RUN echo "deb http://ftp.us.debian.org/debian stable main" > /etc/apt/sources.list && \
    echo "deb http://ftp.us.debian.org/debian/ jessie-updates main" >> /etc/apt/sources.list && \
    echo "deb http://security.debian.org/ jessie/updates main" >> /etc/apt/sources.list && \
    echo "deb http://cran.uni-muenster.de/bin/linux/debian jessie-cran3/" >> /etc/apt/sources.list

# Install app dependencies:
RUN apt-get -y update
RUN apt-get install -y git build-essential python3-pip \
    python3-dev python-psycopg2 libpng12-dev \
    postgresql-server-dev-all libxft-dev libfreetype6-dev \
    virtualenv bash postgresql-client sudo bash
RUN pip3 install --upgrade pip

# Switch from /bin/sh to /bin/bash:
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# Frontend Port:
EXPOSE 5000

# Environment variables:
ENV APP_DIR "/dam"

# Clone DAM:
RUN git clone https://github.com/openbudgets/DAM $APP_DIR && \
            cd $APP_DIR && \
            git checkout staging_indigo
WORKDIR $APP_DIR

# Install DAM:
RUN yes | make pre
RUN source ./env/bin/activate
RUN yes | make dam

# COPY environment vars:
COPY ./.env $APP_DIR/.env

# Start DAM:
COPY ./runServer.sh /runServer.sh
CMD ["/bin/sh", "/runServer.sh"]