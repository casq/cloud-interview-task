FROM python:3.8-alpine

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

RUN ls /app
RUN ls /app/templates
RUN cat /app/templates/index.htm

EXPOSE 3000

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
