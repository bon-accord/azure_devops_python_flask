FROM python:3.7-slim

LABEL Team="Tech Test Team"

RUN pip install Flask==1.0.2

RUN mkdir /appdir && chmod 775 /appdir
WORKDIR /appdir
COPY . /appdir
RUN chmod 755 app.py
RUN which python3
RUN ls -l

#ENTRYPOINT ["python3", "./app.py"]
ENTRYPOINT ["python"]
# Set the command as the script name
CMD ["app.py"]