FROM python:3.6.9

RUN mkdir /chat-dist
WORKDIR /chat-dist
ADD . /chat-dist/
RUN pip install -r requirements.txt
ENV FLASK_ENV=development
EXPOSE 5000
CMD ["python3", "app/main.py"]

