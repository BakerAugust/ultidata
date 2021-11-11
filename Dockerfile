# # FROM python:3.8
# # RUN pip install fastapi uvicorn
# # COPY ./app /app
# # CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000:8000"]

FROM python:3.7

COPY requirements.txt .

RUN pip install -r requirements.txt

EXPOSE 80

COPY ./app /app