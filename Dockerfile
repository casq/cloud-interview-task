FROM python:3.8-alpine

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

EXPOSE 3000

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]

#CMD [ "/bin/sh" "-c" "python app/app.py" ]
