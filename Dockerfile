FROM python:3.9-slim-bullseye

WORKDIR /app

COPY requirements.txt /app

RUN pip install --no-cache-dir --upgrade pip \
 && pip install --no-cache-dir -r /app/requirements.txt \
 && rm -rf /root/.cache/pip 

COPY minimal/app.py /app/app.py

EXPOSE 7861

ENTRYPOINT ["python", "/app/app.py"]
