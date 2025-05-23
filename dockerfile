FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY ./src ./src
COPY ./api ./api
COPY ./model ./model

CMD ["uvicorn", "api.app:app", "--host", "0.0.0.0", "--port", "80"]
