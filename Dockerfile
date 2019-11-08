FROM python:3.6.9-slim-stretch
# re: mkdir, https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=863199#23
RUN mkdir -p /usr/share/man/man1 && \
    apt-get update && apt-get install -y \
    openjdk-8-jre-headless \
    && rm -rf /var/lib/apt/lists/* && \
    pip3 --no-cache-dir install hail==0.2.26 ipython
ENTRYPOINT ["ipython"]
CMD []
