FROM python:3.13-slim

WORKDIR /app

COPY requirements/requirements.txt requirements/requirements.txt

RUN pip install --no-cache-dir -r requirements/requirements.txt

COPY . .

RUN chmod +x ./start.sh

# Use CMD instead of ENTRYPOINT to allow overriding
ENTRYPOINT ["./start.sh"]
