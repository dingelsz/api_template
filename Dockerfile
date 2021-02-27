FROM alpine
# Linux packages
RUN apk update
RUN apk add --no-cache python3 py3-pip

# Python packages
COPY ./requirments.txt /app/requirments.txt
RUN pip3 install -r /app/requirments.txt

# Run the app - mount the code for easier development
# docker run -p 5000:5000 -v ~/projects/api/:/mnt/app: flask
EXPOSE 5000
CMD gunicorn -b 0.0.0.0:5000 --chdir /mnt/app/ -c /mnt/app/config.py main:app
