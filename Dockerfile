FROM python:3

WORKDIR /usr/src/app

COPY ./inception /app
WORKDIR /app

RUN pip install --no-cache-dir -r requirements.txt

CMD [ "gunicorn", "--timeout=240", "--workers=1", "-b 0.0.0.0:80", "main:app" ]
