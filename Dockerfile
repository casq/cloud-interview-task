FROM python:3.8-alpine

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT [ "python", "app.py" ]

# CMD [ "app.py" ]
