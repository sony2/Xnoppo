FROM python:3.9

RUN pip install pywebostv
RUN pip install websocket-client
RUN pip install requests
RUN pip install psutil

RUN mkdir /app

COPY *.json /app/
COPY *.py /app/
COPY lib /app/lib/
COPY versions /app/versions/
COPY web /app/web/

WORKDIR /app
CMD ["python", "emby_xnoppo_client.py"]