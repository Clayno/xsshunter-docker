FROM python:2-alpine

RUN mkdir /xsshunter
RUN addgroup -S xsshunter && adduser --disabled-password \
    --no-create-home \
    --gecos "" \
    -s /bin/false \
    --ingroup xsshunter \
    xsshunter

WORKDIR /xsshunter
RUN apk add git py2-pip postgresql-libs libffi-dev \
    && apk add --no-cache --virtual .build-deps gcc musl-dev postgresql-dev \
    && git clone https://github.com/clayno/xsshunter.git 

WORKDIR /xsshunter/xsshunter/api
RUN pip install -r requirements.txt 

WORKDIR /xsshunter/xsshunter/gui
RUN pip install -r requirements.txt

WORKDIR /xsshunter
RUN apk --purge del .build-deps


COPY start.sh /xsshunter/xsshunter/
RUN chmod +x /xsshunter/xsshunter/start.sh
COPY config.yaml /xsshunter/xsshunter/

RUN chown -R xsshunter:xsshunter /xsshunter
USER xsshunter

CMD ["/bin/sh", "/xsshunter/xsshunter/start.sh"]

