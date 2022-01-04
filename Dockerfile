FROM python:3.7-alpine

RUN pip install requests

COPY hello_world.py /

CMD ["python", "hello_world.py"]
