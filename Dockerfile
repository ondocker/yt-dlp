FROM python:3.9.10-slim-bullseye

RUN apt-get update && apt-get -y install ffmpeg && rm -rf /var/lib/apt/lists/*

ARG ytdlp_pip_version=2022.6.22.1

RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install yt-dlp==${ytdlp_pip_version}

COPY entry.sh /bin/
RUN chmod +x /bin/entry.sh

RUN mkdir /data
WORKDIR /data

ENV UPDATE_YTDLP=no

ENTRYPOINT [ "/bin/bash", "/bin/entry.sh" ]
