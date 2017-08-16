FROM python:2.7

RUN pip install salt-ssh
ENTRYPOINT ["salt-ssh"]
