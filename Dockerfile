FROM python:3.6
RUN apt-get update && apt-get install -y \
    openjdk-8-jre \
    && rm -rf /var/lib/apt/lists/* && \
    pip3 --no-cache-dir install hail==0.2.23 ipython
