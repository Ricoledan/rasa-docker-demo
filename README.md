# rasa-docker-demo

Rasa NLU

## :speech_balloon: Introduction

## Setting up

## Install Rasa

`https://rasa.com/docs/rasa/installation/`

### Set up python environment

Create virtual environment

```Bash
python3.8 -m venv venv
```

Activate Environment

```Bash
source venv/bin/activate
```

Install dependencies

```Bash
python3 -m pip install -r requirements.txt
```

Lock dependencies

```Bash
pip freeze > requirements.txt
```

### Run application

1. Build container using Dockerfile from root directory

```Bash
docker build -t rasa .
```

2. Start the NLU server using newly build docker container

```Bash
docker run -p 5005:5005 rasa
```

Test Application locally

```Bash
rasa run --enable-api -m models/20210824-134134.tar.gz  --port 5005
```
