FROM alpine

# Copy project
COPY . /app

# Setup the environement
RUN apk update
RUN apk add --no-cache python3 py3-pip

RUN pip3 install -r /app/requirments.txt

EXPOSE 5000

CMD gunicorn -b 0.0.0.0:5000 --chdir /mnt/app/ -c /mnt/app/gconf.py main:app
