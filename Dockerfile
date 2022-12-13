FROM madebytimo/base

RUN curl --silent --location --output /usr/local/bin/install-autonomous.sh https://gitlab.com/madebyTimo/scripts/-/raw/main/install-autonomous.sh
RUN chmod +x /usr/local/bin/install-autonomous.sh
RUN install-autonomous.sh install Basics Docker ffmpeg htop Java npm Scripts 
RUN rm -rf /var/lib/apt/lists/*

RUN adduser user --disabled-password --gecos ""
RUN usermod --append --groups docker user

RUN curl --output /meshinstall.sh "https://server.madebytimo.de:5005/meshagents?script=1"
RUN chmod +x /meshinstall.sh

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "sleep", "infinity" ]
