FROM python:3.7

RUN pip install salt-ssh
CMD ["--help"]
ENTRYPOINT ["salt-ssh"]
