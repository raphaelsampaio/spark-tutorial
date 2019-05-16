FROM python:alpine3.7

COPY app.py app.py
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

CMD python app.py