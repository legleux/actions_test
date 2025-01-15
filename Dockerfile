FROM python:3.11

COPY script.py script
CMD [ "python", "script.py" ]
