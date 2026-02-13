# declare what image to use
# FROM codingforentrepreneurs/cfe-nginx:latest
# FROM image_name:latest
FROM python:3.11-slim

WORKDIR /app

# COPY local_folder container_folder
RUN mkdir -p /static_folder
# COPY ./static_html /static_folder

# same destination is /app
# COPY ./static_html /app
COPY ./src .
# RUN echo "hello"> index.html

# docker build -f Dockerfile -t pyapp .
# docker run -it pyapp

# docker build -f Dockerfile -t aquibkhan802/ai-py-app:latest .
# docker push aquibkhan802/ai-py-app:latest
#  python -m http.server 8000
# docker run -it -p 8000:8000 pyapp
CMD ["python", "-m", "http.server", "8000"]

