FROM python:3.6.9

RUN mkdir /loadtest
WORKDIR /loadtest
ADD . /loadtest/
RUN pip install locust
EXPOSE 8089
CMD ["locust"]
