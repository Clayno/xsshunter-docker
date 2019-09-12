FROM python:2-alpine

WORKDIR /usr/local/share
RUN apk add git py2-pip postgresql-libs libffi-dev \
    && apk add --no-cache --virtual .build-deps gcc musl-dev postgresql-dev \
    && git clone https://github.com/clayno/xsshunter.git 

WORKDIR /usr/local/share/xsshunter/api
RUN pip install -r requirements.txt 

WORKDIR /usr/local/share/xsshunter/gui
RUN pip install -r requirements.txt

WORKDIR /usr/local/share
RUN apk --purge del .build-deps

COPY start.sh /usr/local/share/xsshunter/
COPY config.yaml /usr/local/share/xsshunter/

CMD ["/bin/sh", "/usr/local/share/xsshunter/start.sh"]

