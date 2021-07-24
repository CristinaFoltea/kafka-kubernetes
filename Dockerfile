FROM python:3.8-slim-buster
ENV PYTHONUNBUFFERED=0
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
CMD [ "python3", "app.py"]