FROM python:3.12.1-alpine3.19

WORKDIR /src

COPY /analytics/requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY ./analytics .

EXPOSE 5051

CMD python app.py