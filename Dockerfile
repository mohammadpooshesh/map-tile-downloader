FROM python:3.7-slim

RUN pip install download-tiles
RUN hash -r
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update

RUN apt-get -y install git

WORKDIR /app

RUN git clone https://github.com/mapbox/mbutil.git
RUN mkdir tiles
VOLUME [ "/app/tiles" ]
COPY start_app.sh .
CMD [ "/app/start_app.sh" ]
