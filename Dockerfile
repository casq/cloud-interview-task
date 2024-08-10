FROM python:3.8-alpine

COPY ./requirements.txt /app/requirements.txt

COPY /templates/index.htm /templates/index.htm

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

EXPOSE 3000

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
