FROM python:3.8.12-bullseye

WORKDIR /rasa

COPY . ./

RUN pip install rasa

EXPOSE 5005

CMD ["rasa", "run", "--enable-api", "-m", "models/20210824-134134.tar.gz",  "--port", "5005"]