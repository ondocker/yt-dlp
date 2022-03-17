FROM python:3.9.10-slim-bullseye

RUN apt-get update && apt-get -y install ffmpeg && rm -rf /var/lib/apt/lists/*

RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install yt-dlp

COPY entry.sh /bin/
RUN chmod +x /bin/entry.sh

RUN mkdir /data
WORKDIR /data

ENTRYPOINT [ "/bin/bash", "/bin/entry.sh" ]