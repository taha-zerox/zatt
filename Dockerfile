FROM python:3.5-alpine

ADD . /app/
WORKDIR /app

RUN python setup.py install

EXPOSE 5254

CMD ["zattd", "-c", "zatt.conf"]
# CMD ["zattd", "-s", "zatt.1.persist", "-a", "127.0.0.1", "-p", "5254", "--remote-address", "127.0.0.1,127.0.0.1,127.0.0.1", "--remote-port", "5254,5255,5256"]
