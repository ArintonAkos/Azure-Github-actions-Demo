FROM python:3.8-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

ENV NAME World

CMD ["gunicorn", "-b", "0.0.0.0:8000", "iplscore:app"]
