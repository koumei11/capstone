FROM python:3.9.7

WORKDIR /app

COPY . app.py /app/

RUN pip install --upgrade pip &&\
  pip install -r requirements.txt

EXPOSE 80

CMD ["python", "app.py"]